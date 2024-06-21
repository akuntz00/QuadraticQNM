# QuadraticQNM
Toolkit for computing quadratic quasi-normal modes amplitudes                                                              

                        *##*
                       @     *@
                       @                                    :=%@@*
                      .%                                         .*
              -**=:   %:                                         .*
             @                       @@@@@@@@                    =-
             @                  %@@@@@@@@@@@@@@@@@               *
             %-              =@@@@@@@@@@@@@@@@@@@@@%             ++:
              @           =@@@@@@@@@@@@@@@@@@@@@@@@@@@@              :-+#=
             :@         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-               @
       #@@*-           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+             *#
      %               @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+           *=
      *:             %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.         *:
       #:           :@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%         *+
        #=          +@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.          :@#
                    *@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=             :@
                   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=              *-
                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=            .%:
                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@            @:
                     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                            @@@@@@@@@@@@@@@@@@@@@@@@@@
                              @@@@@@@@@@@@@@@@@@@@@
                                   @@@@@@@@@@@



                           :=
                            *:
                            .*      #@*        .
                             *:  :#:   #      *-
                              =*=       %:   @
                                         :**-



########  QUADRATIC QUASI-NORMAL MODES  #######



This folder contains material related to the article "Amplitudes and Polarizations of Quadratic Quasi-Normal Modes for a Schwarzschild Black Hole" by Bruno Buccioti, Leonardo Juliano, Adrien Kuntz, Enrico Trincherini:



1) QuadraticRatio.csv: This file contains the non-linear mode amplitude of the asymptotic waveform divided by the product of the two parent linear modes which generate it, for a bunch of different mode numbers and for defined parities. Notice that restricting to a definite parity for the modes means these ratios are valid only assuming reflection symmetry. However, the more general formula accounting for deviations to reflection symmetry in the end uses only these numbers (see eqs. 5.1 and 5.2), so these are the ones we provide here. Columns of the csv are:
    - l: angular momentum number of the nonlinear mode
    - l1: angular momentum number of the first linear mode
    - l2: angular momentum number of the second linear mode
    - n1: overtone number of the first linear mode
    - n2: overtone number of the second linear mode
    - p: parity (0=even or 1=odd) of the nonlinear mode
    - p1: parity (0=even or 1=odd) of the first linear mode
    - p2: parity (0=even or 1=odd) of the second linear mode
    - mirror1: is the first linear mode a mirror mode, i.e. with negative real part of frequency (0=False, 1=True)
    - mirror2: is the second linear mode a mirror mode, i.e. with negative real part of frequency (0=False, 1=True)
    - ReRatioNL: Real part of the normalized ratio of nonlinear amplitude / (linear amplitude 1 * linear amplitude 2)
    - ImRatioNL: Imaginary part of the normalized ratio of nonlinear amplitude / (linear amplitude 1 * linear amplitude 2)

To recover the actual ratio from the normalized ratio given in the csv, multiply it by (-1)^m ThreeJSymbol[{l,-m}, {l1,m1}, {l2,m2}] / SymmetryFactor, where SymmetryFactor is 2 if the two linear modes are the same (i.e. l1=l2, m1=m2, n1=n2, mirror1=mirror2) and 1 otherwise.
We provide the minimal possible set of nonlinear amplitudes; if the one you are searching seems not to be in the CSV, try with the symmetric one. E.g. you're searching for l1=2, l1+m1 odd, l2=3, l2+m2 even: this value is not in the table, but you can find the value for l1=3, l1+m1 even, l2=2, l2+m2 odd, which has the same nonlinear ratio. Be careful to the order of l1 and l2 when multiplying by the 3J symbol. Our rules for providing the minimal set of amplitudes are as follow:
 - If l1+m1 and l2+m2 have the same parity, we give only values for l1 <= l2
 - If l1+m1 and l2+m2 have different parities, mode number 1 is the even mode

For mirror modes, we provide only values where Re(omegaNL)>0, as nonlinear modes with negative real part are themselves mirror modes at second order and thus can be found usings eq. 5.4 from the paper.



2) fetcher.py: Convenience class which fetches the nonlinear ratio for a given combination of parameters. Example usage:

QuadraticQNM(l=4, l1=2, l2=2, m1=2, m2=2, n1=0, n2=0, kappa1=1., kappa2=1., mirror1=False, mirror2=False).omega()
QuadraticQNM(l=4, l1=2, l2=2, m1=2, m2=2, n1=0, n2=0, kappa1=1., kappa2=1., mirror1=False, mirror2=False).NLRatio()

where mirror1=True or mirror2=True if you want one of the parent modes to be a mirror mode (i.e. with negative real part of the frequency), and kappa1, kappa2 are the polarization parameters of the linear QNMs, defined in eq. 4.33 of the paper. If you assume reflection symmetry, then kappa1 = (-1)^(l1+m1) and similarly for kappa2. We thus provide a convenience function to compute quadratic QNM in reflection/equatorial symmetry:

QuadraticQNM_equatorialSym(l=4, l1=2, l2=2, m1=2, m2=2, n1=0, n2=0, mirror1=False, mirror2=False).omega()
QuadraticQNM_equatorialSym(l=4, l1=2, l2=2, m1=2, m2=2, n1=0, n2=0, mirror1=False, mirror2=False).NLRatio()

To run this Python code you'll need the qnm package from Black Hole Perturbation Toolkit.



3) AsymptoticRelations.wl: Relations giving the asymptotic normalized ratio of amplitudes R in the TT gauge from the result of the numerical integration of the second-order Regge-Wheeler or Zerilli equations, taking into account all the term generated when changing gauge as explained in Section 4. The parameters in the file are:
    - ROOO: Asymptotic ratio of strain amplitudes for large r of the quadratic QNM in the TT gauge (i.e. the ratio displayed in eq. 5.1 and 5.2) for mode 1 odd, mode 2 odd, and quadratic mode odd. Similar notation follow for other parities (e.g. ROOE -> mode 1 odd, mode 2 odd, quadratic mode even). 
    - NUMERIC: Asymptotic limit for large r of the ratio of second-order RW/Z variable divided by the product of first-order RW/Z variables from Leaver solution
    - JS[{l1, -s1}, {l2, -s2}, {l, s}]: Three-J symbol
To recover the actual ratio from the normalized ratio given in the file, multiply it by (-1)^m ThreeJSymbol[{l,-m}, {l1,m1}, {l2,m2}] / SymmetryFactor, where SymmetryFactor is 2 if the two linear modes are the same (i.e. l1=l2, m1=m2, n1=n2, mirror1=mirror2) and 1 otherwise.



4) fctSource.zip: zip file containing fctSourceOOO.wl (and similar files): Four functions entering the source term as in eq.(3.5) of the paper for two odd linear modes generating an odd nonlinear mode (and similarly for other files: e.g., fctSourceOOE is for odd first linear mode, odd second linear mode, and even nonlinear mode). For even second-order modes, we give both the functions entering Zerilli equation (e.g. fctSource1Z) or the functions entering RW equation (e.g. fctSource1RW) after Chandrasekhar transformation as described in eq.(3.12). If the two linear perturbations are the same (i.e. l1=l2, m1=m2, n1=n2, mirror1=mirror2) you need to divide the functions provided by a symmetry factor of 2.



5) diffeo.wl: Asymptotic diffeomorphism to go from TT gauge to RWZ gauge at second order, as explained in section 4.2.2 of the paper. Ae1 (Ao1) is the asymptotic amplitude of the Zerilli (RW) variable for linear mode 1, see eq. 4.3, and same for mode 2. JS[{l1, -s1}, {l2, -s2}, {l, s}] is the three-J symbol.



6) ExplicitSmunu.nb: This notebook defines a perturbed black hole metric and computes its Einstein tensor to second order in epsilon, giving the tensor S_{\mu\nu}. We then express the tensor in terms of linear master scalars, and finally split the result into the three possible parity sectors: even x even, even x odd, odd x odd. The resulting three tensors SourceSimpleEE, SourceSimpleEO, SourceSimpleOO are saved as Mathematica objects.



7) Source.wl: One can import the S_{\mu\nu} tensor computed above directly using 'Get[FileNameJoin[{NotebookDirectory[], "Source.wl"}]];', assuming the Mathematica code runs in the same directory as 'Source.wl'.



8) Linear.wl: This Mathematica object, when imported using 'Get[FileNameJoin[{NotebookDirectory[], "Linear.wl"}]];', defines four variables \psi EH, \psi OH, \psi EI, \psi OI (there is no space in the Mathematica definition). These are the ratios \psi'(r) / \psi(r) computed to sufficient order in 1/r (Infinity, second capital letter I) or (r-2M) (Horizon, second capital letter H) for linear master scalars in the Even or Odd sector (first capital letter E or O respectively).



9) Asymptoticsxxx.nb: Each of these six notebooks deals with a single parity sector (first two letters after Asymptotics indicate the parity of the linear sectors one is coupling, the last letter indicates the parity of the quadratic sector). Schematically, one projects the relevant components of S_{\mu\nu} onto a tensor spherical harmonics basis, integrating in the angular variables using the known integral of three spin-weighted spherical harmonics, and computes the source for the RWZ equation. One then checks the behaviour at the horizon and at infinity, correcting it where needed. Finally, one reconstructs the metric components at leading order in large r in RW gauge. Each code saves a file 'Sourcexxx.wl' that contains the regulated source 'Sourcexxx', plus the relevant metric components at large r. The link between the regular and irregular master scalar is provided by \Delta(r), which is defined as described in the paper.
N.B. Parity selection rules allow us to replace by hand (-1)^{l1+l2+l} with a new variable 'parity' = 1, -1 where the sign only depends on the parity sector. This allows for shorter expressions, at the expense of a source term which can only be trusted for values of l1,l2,l which respect parity selection rules. For all other values, we already know S=0.
The definition of \Delta allows a logarithmic term, whose coefficient always turns out to be zero. This is checked only for values of l1,l2,l allowed by parity selection rules, because only then can our Source be trusted.


For any questions, feel free to ask questions to:
adrien.kuntz@sns.it
bruno.bucciotti@sns.it


