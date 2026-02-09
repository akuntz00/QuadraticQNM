import qnm
import numpy as np
from sympy.physics.wigner import wigner_3j
import pandas as pd


NLfile = pd.read_csv('QuadraticRatio.csv', names=['l', 'l1', 'l2', 'n1', 'n2', 'p', 'p1', 'p2', 'mirror1', 'mirror2', 'ReANL', 'ImANL'], skiprows=1)


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
    def __init__(self, l, l1, l2, m1, m2, n1, n2, kappa1, kappa2, mirror1=False, mirror2=False):
        if l > l1+l2 or l < np.abs(l1-l2):
            raise Exception('l, l1 and l2 should respect the Clebsch-Gordan inequality')
        if m1+m2 > l:
            raise Exception('l must be greater than m1+m2')

        self.l = l
        self.m = m1+m2
        self.l1 = l1
        self.l2 = l2
        self.m1 = m1
        self.m2 = m2
        self.n1 = n1
        self.n2 = n2
        self.mirror1 = mirror1
        self.mirror2 = mirror2
        self.kappa1 = kappa1
        self.kappa2 = kappa2

        # Initialize parent modes
        self.parent1=LinearQNM(self.l1, self.m1, self.n1, self.mirror1)
        self.parent2=LinearQNM(self.l2, self.m2, self.n2, self.mirror2)

        # Find schwarzschild freq for determining which has the highest real part for mirror modes.
        # This will be useful for fetching NL ratio: we fetch only ratio for positive real freq
        omega1 = self.parent1.omega()
        omega2 = self.parent2.omega()
        self.mirror=False
        if self.mirror1 and self.mirror2:
            self.mirror = True
        elif self.mirror1 or self.mirror2:
            if abs(np.real(omega1))>abs(np.real(omega2)) and self.mirror1:
                self.mirror = True
            elif abs(np.real(omega2))>abs(np.real(omega1)) and self.mirror2:
                self.mirror = True

        if self.mirror: # Mirror all m's and mirrors. 
            self.mirror1 = not self.mirror1
            self.mirror2 = not self.mirror2
            self.m1 = - self.m1
            self.m2 = - self.m2
            self.m = - self.m
            self.kappa1 = 1/np.conjugate(self.kappa1) #cf eq. 5.3 of 2406.14611
            self.kappa2 = 1/np.conjugate(self.kappa2)
            # Reinitialize parent modes
            self.parent1=LinearQNM(self.l1, self.m1, self.n1, self.mirror1)
            self.parent2=LinearQNM(self.l2, self.m2, self.n2, self.mirror2)

        # Find symmetry factor
        if self.l1 == self.l2  and self.m1 == self.m2 and self.n1 == self.n2 and self.mirror1 == self.mirror2:
            if self.kappa1 != self.kappa2:
                raise Exception('kappa1 and kappa2 should be the same if modes are the same')
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

        # Loop over parities and find the 4 ratios entering the final formula
        NLRatio = np.zeros((2,2), dtype=complex)
        for p1 in [0,1]:
            for p2 in [0,1]:
                p = (self.l+self.l1+self.l2-p1-p2)%2 #cf eq. 2.21 of 2406.14611

                # Have to find which number we fetch in the file; inverse 1 and 2 if necessary
                if p1==p2: #EE or OO -> we have only l1<l2 in the file
                    if self.l1 <= self.l2:
                        inverse = False
                    else:
                        inverse = True
                else:  #EO or OE -> 1 should be E, 2 is O
                    if p1 == 0:
                        inverse = False
                    else:
                        inverse = True

                if not inverse:
                    l1Fetch = self.l1
                    l2Fetch = self.l2
                    m1Fetch = self.m1
                    m2Fetch = self.m2
                    n1Fetch = self.n1
                    n2Fetch = self.n2
                    mirror1Fetch = self.mirror1
                    mirror2Fetch = self.mirror2
                    p1Fetch = p1
                    p2Fetch = p2
                else:
                    l1Fetch = self.l2
                    l2Fetch = self.l1
                    m1Fetch = self.m2
                    m2Fetch = self.m1
                    n1Fetch = self.n2
                    n2Fetch = self.n1
                    mirror1Fetch = self.mirror2
                    mirror2Fetch = self.mirror1
                    p1Fetch = p2
                    p2Fetch = p1

                # Just a technicality: for Re w1 + Re w2 = 0, the mirror mode is always the second one in the file
                # so if mirror1=1, we have to fetch the mirror ratio
                sameOmega=False
                if (np.isclose(np.real(self.parent1.omega() + self.parent2.omega()), 0) and mirror1Fetch):
                    sameOmega=True
                    mirror1Fetch = not mirror1Fetch
                    mirror2Fetch = not mirror2Fetch
                    m1Fetch = - m1Fetch
                    m2Fetch = - m2Fetch

                # Fetch the ratio!
                data = NLfile.loc[(NLfile.l==self.l) & (NLfile.l1==l1Fetch) & (NLfile.l2==l2Fetch)
                & (NLfile.n1==n1Fetch) & (NLfile.n2==n2Fetch) & (NLfile.p==p) 
                & (NLfile.p1==p1Fetch) & (NLfile.p2==p2Fetch)
                & (NLfile.mirror1==mirror1Fetch) & (NLfile.mirror2==mirror2Fetch)]
                if len(data)==0:
                    raise Exception(f'Nonlinear amplitude not computed for these values: l={self.l}, l1={l1Fetch}, l2={l2Fetch}, n1={n1Fetch}, n2={n2Fetch}, mirror1={mirror1Fetch}, mirror2={mirror2Fetch}, p={p}, p1={p1Fetch}, p2={p2Fetch}')

                # The final ratio includes a 3j symbol and sym factor
                NLRatio[p1,p2] = (float(data['ReANL'].iloc[0]) + 1j*float(data['ImANL'].iloc[0])) * (-1)**(m1Fetch+m2Fetch)*float(wigner_3j(self.l, l1Fetch, l2Fetch, -(m1Fetch+m2Fetch), m1Fetch, m2Fetch))/self.symFactor
                if sameOmega:
                    NLRatio[p1,p2] = (-1)**(self.l+self.l1+self.l2)*np.conjugate(NLRatio[p1,p2]) # cf eq. 5.4 of 2406.14611 for a mode with definite parity
                # print(NLRatio[p1,p2])

        # Compute the final ratio from eq. 5.1 and 5.2 of 2406.14611
        if ((self.l+self.l1+self.l2)%2==0):
            alpha = NLRatio[0,0]*(1+self.kappa1)*(1+self.kappa2) + NLRatio[1,1]*(1-self.kappa1)*(1-self.kappa2)
            beta = NLRatio[0,1]*(1+self.kappa1)*(1-self.kappa2) + NLRatio[1,0]*(1-self.kappa1)*(1+self.kappa2)
        else:
            beta = NLRatio[0,0]*(1+self.kappa1)*(1+self.kappa2) + NLRatio[1,1]*(1-self.kappa1)*(1-self.kappa2)
            alpha = NLRatio[0,1]*(1+self.kappa1)*(1-self.kappa2) + NLRatio[1,0]*(1-self.kappa1)*(1+self.kappa2)

        R = (alpha+beta)/4
        # Check if R=0: if yes, we do not care about kappa, if not we use formulas 5.1 and 5.2
        if (R==0):
            kappa = (-1)**(self.l+self.m)
        else:
            kappa = (alpha-beta)/(alpha+beta)

        # If it's a mirror mode at second order, use eq. 5.4 of 2406.14611
        if self.mirror:
            R = np.conjugate(kappa*R/self.kappa1/self.kappa2)
            kappa = 1/np.conjugate(kappa)

        return (R, kappa)


#### Convenience function to compute quadratic QNM in the presence of equatorial sym -> kappa1 and kappa2 are given
class QuadraticQNM_equatorialSym:
    def __init__(self, l, l1, l2, m1, m2, n1, n2, mirror1=False, mirror2=False):
        kappa1 = (-1)**(l1+m1)
        kappa2 = (-1)**(l2+m2)
        self.quadraticQNM = QuadraticQNM(l, l1, l2, m1, m2, n1, n2, kappa1, kappa2, mirror1, mirror2)

    def omega(self):
        return self.quadraticQNM.omega()

    def NLRatio(self):
        (R, kappa) = self.quadraticQNM.NLRatio()
        return R









