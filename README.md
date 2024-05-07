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



################################  QUADRATIC QUASI-NORMAL MODES  ###########################################



This folder contains material related to the article "Amplitudes of Quadratic Quasi-Normal Modes for a Schwarzschild Black Hole" by Bruno Buccioti, Leonardo Juliano, Adrien Kuntz, Enrico Trincherini:



1) NL.csv: This file contains the non-linear mode amplitude of the asymptotic waveform divided by the product of the two parent linear modes which generate it, for a bunch of different mode numbers. Columns of the csv are:
    - l: angular momentum number of the nonlinear mode
    - l1: angular momentum number of the first linear mode
    - l2: angular momentum number of the second linear mode
    - n1: overtone number of the first linear mode
    - n2: overtone number of the second linear mode
    - l+m[2]: parity (0=even or 1=odd) of the sum of l+m for the nonlinear mode
    - l1+m1[2]: parity (0=even or 1=odd) of the sum of l1+m1 for the first linear mode
    - l2+m2[2]: parity (0=even or 1=odd) of the sum of l2+m2 for the second linear mode
    - mirror1: is the first linear mode a mirror mode (0=False, 1=True)
    - mirror2: is the second linear mode a mirror mode (0=False, 1=True)
    - ReRatioNL: Real part of the normalized ratio of nonlinear amplitude / (linear amplitude 1 * linear amplitude 2)
    - ImRatioNL: Imaginary part of the normalized ratio of nonlinear amplitude / (linear amplitude 1 * linear amplitude 2)

To recover the actual ratio from the normalized ratio given in the csv, multiply it by (-1)^m ThreeJSymbol[{l,-m}, {l1,m1}, {l2,m2}] / SymmetryFactor, where SymmetryFactor is 2 if the two linear modes are the same (i.e. l1=l2, m1=m2, n1=n2, mirror1=mirror2) and 1 otherwise.
We provide the minimal possible set of nonlinear amplitudes; if the one you are searching seems not to be in the CSV, try with the symmetric one. E.g. you're searching for l1=2, l1+m1 odd, l2=3, l2+m2 even: this value is not in the table, but you can find the value for l1=3, l1+m1 even, l2=2, l2+m2 odd, which has the same nonlinear ratio. Be careful to the order of l1 and l2 when multiplying by the 3J symbol. Our rules for providing the minimal set of amplitudes are as follows:
 - If l1+m1 and l2+m2 have the same parity, we give only values for l1 <= l2
 - If l1+m1 and l2+m2 have different parities, mode number 1 is the even mode
 
For mirror modes, we provide only values where Re(omegaNL)>0, as nonlinear modes with negative real part are themselves mirror modes at second order and thus can be found assuming reflection symmetry.


2) fetcher.py: Convenience class which fetches the nonlinear ratio for a given combination of parameters. Example usage:

QuadraticQNM(l=4, l1=2, l2=2, m1=2, m2=2, n1=0, n2=0, mirror1=False, mirror2=False).omega()
QuadraticQNM(l=4, l1=2, l2=2, m1=2, m2=2, n1=0, n2=0, mirror1=False, mirror2=False).NLRatio()

where mirror1=True or mirror2=True if you want one of the parent modes to be a mirror mode (i.e. with negative real part of the frequency). To run this Python code you'll need the qnm package from Black Hole Perturbation Toolkit.



Feel free to ask questions to:
adrien.kuntz@sns.it
bruno.bucciotti@sns.it