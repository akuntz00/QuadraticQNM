import qnm
import numpy as np
from sympy.physics.wigner import wigner_3j
import pandas as pd


NLfile = pd.read_csv('QuadraticRatio.csv', names=['l', 'l1', 'l2', 'n1', 'n2', 'lmmod2', 'l1m1mod2', 'l2m2mod2', 'mirror1', 'mirror2', 'ReANL', 'ImANL'], skiprows=1)


class LinearQNM:
    def __init__(self, l, m, n, mirror):
        self.l = l
        self.m = m
        self.n = n
        self.mirror = mirror

    def omega(self):
        omegaspin = qnm.modes_cache(s=-2,l=self.l,m=self.m,n=self.n)
        omega, _, _ = omegaspin(a=0)
        if self.mirror:
            omega = - np.conjugate(omega)
        return omega

class QuadraticQNM:
    def __init__(self, l, l1, l2, m1, m2, n1, n2, mirror=False, mirror1or2=False):
        if l > l1+l2 or l < np.abs(l1-l2):
            raise Exception('Problem with l values')

        self.l = l
        self.m = m1+m2

        # Find the correct ordering of 1 and 2 for the csv file
        self.lmmod2 = (l+m1+m2)%2
        self.l1m1mod2 = (l1+m1)%2
        self.l2m2mod2 = (l2+m2)%2
        if self.l1m1mod2 == self.l2m2mod2: #EE or OO -> l1<l2
            if l1 <= l2:
                inverse = False
            else:
                inverse = True
        else: #EO or OE -> 1 should be E, 2 is O
            if self.l1m1mod2 == 0:
                inverse = False
            else:
                inverse = True
            
        if not inverse:
            self.l1 = l1
            self.l2 = l2
            self.m1 = m1
            self.m2 = m2
            self.n1 = n1
            self.n2 = n2
        else:
            self.l1 = l2
            self.l2 = l1
            self.m1 = m2
            self.m2 = m1
            self.n1 = n2
            self.n2 = n1
            self.l1m1mod2 = (l2+m2)%2
            self.l2m2mod2 = (l1+m1)%2
        self.mirror = mirror
        self.mirror1 = False
        self.mirror2 = False

        # Find schwarzschild freq for determining which has the highest real part for mirror modes
        self.parent1=LinearQNM(self.l1, self.m1, self.n1, self.mirror1)
        self.parent2=LinearQNM(self.l2, self.m2, self.n2, self.mirror2)
        omega1 = self.parent1.omega()
        omega2 = self.parent2.omega()
        if mirror1or2:
            if np.real(omega1)>=np.real(omega2):
                self.mirror2 = True
            else:
                self.mirror1 = True
        # Re-Initialize parent modes to take into account mirror
        self.parent1=LinearQNM(self.l1, self.m1, self.n1, self.mirror1)
        self.parent2=LinearQNM(self.l2, self.m2, self.n2, self.mirror2)

        # Find symmetry factor
        if self.l1 == self.l2  and self.m1 == self.m2 and self.n1 == self.n2 and self.mirror1 == self.mirror2:
            self.symFactor = 2
        else:
            self.symFactor = 1

    def omega(self):
        omega = self.parent1.omega() + self.parent2.omega()
        if self.mirror:
            omega = - np.conjugate(omega)
        return omega

    def NLRatio(self):
        # Find the good amplitude ratio in the file
        data = NLfile.loc[(NLfile.l==self.l) & (NLfile.l1==self.l1) & (NLfile.l2==self.l2)
        & (NLfile.n1==self.n1) & (NLfile.n2==self.n2) & (NLfile.lmmod2==self.lmmod2) 
        & (NLfile.l1m1mod2==self.l1m1mod2) & (NLfile.l2m2mod2==self.l2m2mod2) 
        & (NLfile.mirror1==self.mirror1) & (NLfile.mirror2==self.mirror2)]
        if len(data)==0 or len(data)>1:
            raise Exception(f'Nonlinear amplitude not computed for these values: l={self.l}, l1={self.l1}, l2={self.l2}, n1={self.n1}, n2={self.n2}, mirror1={self.mirror1}, mirror2={self.mirror2}, lmmod2={self.lmmod2}, l1m1mod2={self.l1m1mod2}, l2m2mod2={self.l2m2mod2}')
        NLRatio = float(data['ReANL'].iloc[0]) + 1j*float(data['ImANL'].iloc[0])

        # Multiply by the 3j symbol and sym factor
        m1Wigner=self.m1
        m2Wigner=self.m2
        if self.mirror1:
            m1Wigner = -self.m1
        if self.mirror2:
            m2Wigner = -self.m2
        NLRatio = NLRatio * (-1)**self.m*float(wigner_3j(self.l, self.l1, self.l2, -(m1Wigner+m2Wigner), m1Wigner, m2Wigner))/self.symFactor

        return NLRatio