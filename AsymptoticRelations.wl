(* ::Package:: *)

ROOO = ((I/2)*Sqrt[l*(-2 - l + 2*l^2 + l^3)]*
      (-8*Sqrt[l*(1 + l)]*NUMERIC*Sqrt[Pi] + 4*l*Sqrt[l*(1 + l)]*NUMERIC*
        Sqrt[Pi] + 4*Sqrt[l^5*(1 + l)]*NUMERIC*Sqrt[Pi] + 
       l1*(1 + l1)*Sqrt[(1 + 2*l)*(1 + 2*l1)*l2*(1 + 3*l2 + 2*l2^2)]*
        \[Omega]2*JS[{l1, 0}, {l2, 1}, {l, -1}] - 
       Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*l2*(-2 - 5*l2 + 5*l2^3 + 
           2*l2^4)]*\[Omega]2*JS[{l1, 1}, {l2, -2}, {l, 1}] + 
       l2*Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*(1 + 2*l2)]*\[Omega]1*
        JS[{l1, 1}, {l2, 0}, {l, -1}] + 
       l2^2*Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*(1 + 2*l2)]*\[Omega]1*
        JS[{l1, 1}, {l2, 0}, {l, -1}] + 
       Sqrt[(1 + 2*l)*l1*(-2 - 5*l1 + 5*l1^3 + 2*l1^4)*l2*
          (1 + 3*l2 + 2*l2^2)]*\[Omega]1*JS[{l1, 2}, {l2, -1}, {l, -1}]))/
     (Sqrt[l*(1 + l)]*(-2 + l + l^2)*Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)]*
      Sqrt[l2*(-2 - l2 + 2*l2^2 + l2^3)]*Sqrt[Pi])
REOO = ((I/4)*Sqrt[l*(-2 - l + 2*l^2 + l^3)]*
      ((Sqrt[l*(-2 - 5*l + 5*l^3 + 2*l^4)*(1 + 2*l1)*(1 + 2*l2)]*
         (\[Omega]1 + \[Omega]2)^2*(-(Sqrt[l1*(1 + l1)*l2*(1 + l2)]*
            JS[{l1, -1}, {l2, -1}, {l, 2}]) + 
          Sqrt[l2*(-2 - l2 + 2*l2^2 + l2^3)]*JS[{l1, 0}, {l2, -2}, {l, 2}]))/
        ((-1 + l)*l*(1 + l)*(2 + l)) - 
       (Sqrt[(1 + 2*l)*(1 + 2*l1)*l2*(1 + 3*l2 + 2*l2^2)]*
         (\[Omega]1 - \[Omega]2)^2*JS[{l1, 0}, {l2, -1}, {l, 1}])/
        Sqrt[l*(1 + l)] - 
       (2*(-(Sqrt[(1 + 2*l)*(1 + 2*l1)*l2*(1 + 3*l2 + 2*l2^2)]*\[Omega]1*
            (-((-4 + l1 + l1^2)*\[Omega]2^2) + l2*(\[Omega]1^2 + \[Omega]1*
                \[Omega]2 - 2*\[Omega]2^2) + l2^2*(\[Omega]1^2 + \[Omega]1*
                \[Omega]2 - 2*\[Omega]2^2))*JS[{l1, 0}, {l2, 1}, {l, -1}]) + 
          \[Omega]2*((4*I)*(-2*Sqrt[l*(1 + l)] + Sqrt[l^3*(1 + l)] + 
              Sqrt[l^5*(1 + l)])*NUMERIC*Sqrt[Pi]*(\[Omega]1 + \[Omega]2) - 
            Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*l2*(-2 - 5*l2 + 5*l2^3 + 
                2*l2^4)]*\[Omega]1^2*JS[{l1, 1}, {l2, -2}, {l, 1}] - 
            l2*(1 + l2)*Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*(1 + 2*l2)]*
             \[Omega]1*(\[Omega]1 - 2*\[Omega]2)*JS[{l1, 1}, {l2, 0}, 
              {l, -1}] - Sqrt[(1 + 2*l)*l1*(-2 - 5*l1 + 5*l1^3 + 2*l1^4)*l2*(
                1 + 3*l2 + 2*l2^2)]*\[Omega]1^2*JS[{l1, 2}, {l2, -1}, 
              {l, -1}])))/((-1 + l)*Sqrt[l*(1 + l)]*(2 + l)*\[Omega]2)))/
     (Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)]*Sqrt[l2*(-2 - l2 + 2*l2^2 + l2^3)]*
      Sqrt[Pi]*(\[Omega]1 + \[Omega]2))
ROOE = (I*Sqrt[l*(-2 - l + 2*l^2 + l^3)]*
      ((2*I)*NUMERIC*(\[Omega]1 + \[Omega]2) - 
       (l1*(1 + l1)*l2*(1 + l2)*Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*
         \[Omega]1*\[Omega]2*JS[{l1, 0}, {l2, 0}, {l, 0}])/
        ((-1 + l)*l*(1 + l)*(2 + l)*Sqrt[Pi]) + 
       (\[Omega]1*\[Omega]2*(Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*l2*
             (1 + 3*l2 + 2*l2^2)]/(-2 + l + l^2) + 
          ((Sqrt[l1^3*(1 + l1)*l2*(1 + l2)]*Sqrt[(1 + 2*l)*(1 + 2*l1)*
                 (1 + 2*l2)] + Sqrt[l1^5*(1 + l1)*l2*(1 + l2)]*Sqrt[
                (1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)] + Sqrt[l1*(1 + l1)*l2^3*
                 (1 + l2)]*Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)] + 
              Sqrt[l1*(1 + l1)*l2^5*(1 + l2)]*Sqrt[(1 + 2*l)*(1 + 2*l1)*
                 (1 + 2*l2)] - 2*Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*l2*
                 (1 + 3*l2 + 2*l2^2)])/(2 + l - 2*l^2 - l^3) + 
            ((12*I)*Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*l2*(1 + 3*l2 + 
                 2*l2^2)]*\[Omega]1)/((1 + l)*(-2 + l + l^2)^2) + 
            ((12*I)*Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*l2*(1 + 3*l2 + 
                 2*l2^2)]*\[Omega]2)/((1 + l)*(-2 + l + l^2)^2))/l)*
         JS[{l1, 1}, {l2, -1}, {l, 0}])/Sqrt[Pi]))/
     (Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)]*Sqrt[l2*(-2 - l2 + 2*l2^2 + l2^3)]*
      (\[Omega]1 + \[Omega]2))
REOE = ((I/4)*Sqrt[l*(-2 - l + 2*l^2 + l^3)]*
      ((Sqrt[l*(-2 - 5*l + 5*l^3 + 2*l^4)*(1 + 2*l1)*(1 + 2*l2)]*
         (\[Omega]1 + \[Omega]2)^2*(Sqrt[l1*(1 + l1)*l2*(1 + l2)]*
           JS[{l1, -1}, {l2, -1}, {l, 2}] - 
          Sqrt[l2*(-2 - l2 + 2*l2^2 + l2^3)]*JS[{l1, 0}, {l2, -2}, {l, 2}]))/
        ((-1 + l)*l*(1 + l)*(2 + l)) + 
       (Sqrt[(1 + 2*l)*(1 + 2*l1)*l2*(1 + 3*l2 + 2*l2^2)]*
         (\[Omega]1 - \[Omega]2)^2*JS[{l1, 0}, {l2, -1}, {l, 1}])/
        Sqrt[l*(1 + l)] + (4*(2*l*(-2 - l + 2*l^2 + l^3)*NUMERIC*Sqrt[Pi]*
           (\[Omega]1 + \[Omega]2) - I*l*(1 + l)*
           Sqrt[((1 + 2*l)*(1 + 2*l1)*l2*(1 + 3*l2 + 2*l2^2))/(l*(1 + l))]*
           \[Omega]1^2*(-I + \[Omega]1 + \[Omega]2)*JS[{l1, 0}, {l2, 1}, 
            {l, -1}] - Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*l2*
             (1 + 3*l2 + 2*l2^2)]*\[Omega]1*((-I)*\[Omega]1^2 - 
            \[Omega]1*(-1 + l2 + l2^2 + I*\[Omega]2) + (-2 + l1 + l1^2)*
             \[Omega]2)*JS[{l1, 1}, {l2, -1}, {l, 0}]))/
        ((-1 + l)*l*(1 + l)*(2 + l))))/(Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)]*
      Sqrt[l2*(-2 - l2 + 2*l2^2 + l2^3)]*Sqrt[Pi]*(\[Omega]1 + \[Omega]2))
REEE = ((I/4)*Sqrt[l*(-2 - l + 2*l^2 + l^3)]*
      ((Sqrt[l*(-2 - 5*l + 5*l^3 + 2*l^4)*(1 + 2*l1)*(1 + 2*l2)]*
         (\[Omega]1 + \[Omega]2)^3*(JS[{l1, -2}, {l2, 0}, {l, 2}]/
           Sqrt[l2*(-2 - l2 + 2*l2^2 + l2^3)] + JS[{l1, 0}, {l2, -2}, {l, 2}]/
           Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)]))/((-1 + l)*l*(1 + l)*
         (2 + l)) + (2*Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*
         (\[Omega]1 + \[Omega]2)^2*(Sqrt[l1*(1 + l1)]*\[Omega]2*
           JS[{l1, -1}, {l2, 0}, {l, 1}] + Sqrt[l2*(1 + l2)]*\[Omega]1*
           JS[{l1, 0}, {l2, -1}, {l, 1}]))/(Sqrt[l*(1 + l)]*
         Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)]*
         Sqrt[l2*(-2 - l2 + 2*l2^2 + l2^3)]) + 
       (Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*(\[Omega]1^3 + 
          \[Omega]1^2*\[Omega]2 + \[Omega]1*\[Omega]2^2 + \[Omega]2^3)*
         JS[{l1, 0}, {l2, 0}, {l, 0}])/(Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)]*
         Sqrt[l2*(-2 - l2 + 2*l2^2 + l2^3)]) - 
       (2*(\[Omega]1 + \[Omega]2)*(2*Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*
           \[Omega]1^2*\[Omega]2^2*JS[{l1, 0}, {l2, 0}, {l, 0}] - 
          (Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*(3*(-2 + l + l^2)^2*(-2 + 
                l1 + l1^2)*l2^5*\[Omega]1^3*(\[Omega]1 + 2*\[Omega]2) + 
              (-2 + l + l^2)^2*(-2 + l1 + l1^2)*l2^6*\[Omega]1^3*(\[Omega]1 + 
                2*\[Omega]2) + (-2 + l + l^2)*(-2 + l1 + l1^2)*l2^4*\[Omega]1^
                2*(3*\[Omega]1^2*(-2 + l + l^2 - (8*I)*\[Omega]2) - 
                2*\[Omega]1*(10 - 7*l - 6*l^2 + 2*l^3 + l^4 + (12*I)*
                   \[Omega]2)*\[Omega]2 + (-12 + 4*l + 5*l^2 + 2*l^3 + l^4)*
                 \[Omega]2^2) + (-2 + l + l^2)*(-2 + l1 + l1^2)*l2^3*
               \[Omega]1^2*(\[Omega]1^2*(-2 + l + l^2 - (48*I)*\[Omega]2) - 
                2*\[Omega]1*(10 - 9*l - 7*l^2 + 4*l^3 + 2*l^4 + (24*I)*
                   \[Omega]2)*\[Omega]2 + 2*(-12 + 4*l + 5*l^2 + 2*l^3 + l^4)*
                 \[Omega]2^2) + 2*\[Omega]2*(288*(-2 + l1 + l1^2)*\[Omega]1^2*
                 \[Omega]2*(\[Omega]1 + \[Omega]2)^2 - (12*I)*(-2 + l + l^2)*
                 \[Omega]1*(\[Omega]1 + \[Omega]2)*((-2 + l + l^2)*
                   (-2 + l1 + l1^2)*\[Omega]1^2 - (2*(-6 + l1 + l1^2) + 
                    l*(2 + l1 + l1^2) + l^2*(2 + l1 + l1^2))*\[Omega]1*
                   \[Omega]2 - (l*(2 + l1 + l1^2) + l^2*(2 + l1 + l1^2) + 
                    2*(-2 - 3*l1 - 2*l1^2 + 2*l1^3 + l1^4))*\[Omega]2^2) - 
                (-2 + l + l^2)^2*(-2 + l1 + l1^2)*\[Omega]2*
                 (4*l^3*\[Omega]1^2 + 2*l^4*\[Omega]1^2 + l*\[Omega]1*
                   ((-4 + l1 + l1^2)*\[Omega]1 - 2*l1*(1 + l1)*\[Omega]2) + 
                  l^2*\[Omega]1*((-2 + l1 + l1^2)*\[Omega]1 - 2*l1*(1 + l1)*
                     \[Omega]2) + l1*(1 + l1)*(6*\[Omega]1^2 + 2*(4 + l1 + 
                      l1^2)*\[Omega]1*\[Omega]2 + (2 + l1 + l1^2)*\[Omega]2^
                      2))) + l2*((-2 + l + l^2)^2*l1*(-4 - 4*l1 + l1^2 + 
                  3*l1^3 + 3*l1^4 + l1^5)*\[Omega]2^4 - 2*(-2 + l + l^2)*
                 \[Omega]1*\[Omega]2^3*(-3*(-2 + l + l^2)*l1^5 - 
                  (-2 + l + l^2)*l1^6 + l1^4*(10 - 7*l - 6*l^2 + 2*l^3 + 
                    l^4 + (12*I)*\[Omega]2) - 2*l1*(8 + 2*l^3 + l^4 + 
                    l*(-6 - (3*I)*\[Omega]2) + l^2*(-5 - (3*I)*\[Omega]2) + 
                    (18*I)*\[Omega]2) + l1^3*(10 - 9*l - 7*l^2 + 4*l^3 + 
                    2*l^4 + (24*I)*\[Omega]2) - l1^2*(12 + 2*l^3 + l^4 + 
                    l*(-8 - (6*I)*\[Omega]2) + l^2*(-7 - (6*I)*\[Omega]2) + 
                    (24*I)*\[Omega]2) + (12*I)*(-2 + l + l^2)*\[Omega]2) + 
                4*(-2 + l1 + l1^2)*\[Omega]1^4*(l^4*(-1 - (3*I)*\[Omega]2) + 
                  l^3*(-2 - (6*I)*\[Omega]2) + 4*l*(1 + (6*I)*\[Omega]2) + 
                  3*l^2*(1 + (7*I)*\[Omega]2) - 4*(1 + (9*I)*\[Omega]2 + 
                    18*\[Omega]2^2)) + \[Omega]1^2*\[Omega]2^2*
                 (8*l^7*(-2 + l1 + l1^2) + 2*l^8*(-2 + l1 + l1^2) + 
                  l^6*(-2 + l1 + l1^2)^2 + l^5*(68 - 40*l1 - 37*l1^2 + 
                    6*l1^3 + 3*l1^4) + l^3*(-52 + 10*l1^3 + 5*l1^4 + 
                    16*l1*(1 - (6*I)*\[Omega]2) + 3*l1^2*(7 - (32*I)*
                       \[Omega]2)) + l^4*(40 + 10*l1^3 + 5*l1^4 + 
                    l1*(-30 - (48*I)*\[Omega]2) + l1^2*(-25 - (48*I)*
                       \[Omega]2)) + 4*l*(-12 + 16*l1*(1 + (3*I)*\[Omega]2) + 
                    l1^4*(-5 - (6*I)*\[Omega]2) + l1^3*(-10 - (12*I)*
                       \[Omega]2) + l1^2*(11 + (42*I)*\[Omega]2) + 
                    (24*I)*\[Omega]2) + 2*l^2*(-44 + 8*l1*(5 + (9*I)*
                       \[Omega]2) + l1^4*(-9 - (12*I)*\[Omega]2) + 
                    l1^3*(-18 - (24*I)*\[Omega]2) + l1^2*(31 + (60*I)*
                       \[Omega]2) + (48*I)*\[Omega]2) + (24*I)*
                   (l1^4*(-I + 2*\[Omega]2) + l1^3*(-2*I + 4*\[Omega]2) + 
                    (4*I)*l1*(1 + (2*I)*\[Omega]2 + 3*\[Omega]2^2) + 
                    (3*I)*l1^2*(1 + (2*I)*\[Omega]2 + 4*\[Omega]2^2) - 
                    (4*I)*(1 - (2*I)*\[Omega]2 + 6*\[Omega]2^2))) - 
                4*\[Omega]1^3*\[Omega]2*(-3*l^5*(-2 + l1 + l1^2) - 
                  l^6*(-2 + l1 + l1^2) + 4*l*(2*(5 + (6*I)*\[Omega]2) + 
                    l1*(-5 - (12*I)*\[Omega]2) + l1^2*(-5 - (12*I)*
                       \[Omega]2)) + 12*l^2*(2 + l1*(-1 - (3*I)*\[Omega]2) + 
                    l1^2*(-1 - (3*I)*\[Omega]2) + (3*I)*\[Omega]2) + 
                  3*l^3*(-10 + l1*(5 + (8*I)*\[Omega]2) + l1^2*(5 + 
                      (8*I)*\[Omega]2) - (8*I)*\[Omega]2) + l^4*(-10 + 
                    l1*(5 + (12*I)*\[Omega]2) + l1^2*(5 + (12*I)*\[Omega]2) - 
                    (12*I)*\[Omega]2) + 16*(-2 - (3*I)*\[Omega]2 - 
                    18*\[Omega]2^2 + l1*(1 + (3*I)*\[Omega]2 + 9*\[Omega]2^
                        2) + l1^2*(1 + (3*I)*\[Omega]2 + 9*\[Omega]2^2)))) + 
              l2^2*((-2 + l + l^2)^2*l1*(-4 - 4*l1 + l1^2 + 3*l1^3 + 3*l1^4 + 
                  l1^5)*\[Omega]2^4 - 2*(-2 + l + l^2)*\[Omega]1*\[Omega]2^3*
                 (-3*(-2 + l + l^2)*l1^5 - (-2 + l + l^2)*l1^6 + 
                  l1^4*(10 - 7*l - 6*l^2 + 2*l^3 + l^4 + (12*I)*\[Omega]2) - 
                  2*l1*(8 + 2*l^3 + l^4 + l*(-6 - (3*I)*\[Omega]2) + 
                    l^2*(-5 - (3*I)*\[Omega]2) + (18*I)*\[Omega]2) + 
                  l1^3*(10 - 9*l - 7*l^2 + 4*l^3 + 2*l^4 + (24*I)*
                     \[Omega]2) - l1^2*(12 + 2*l^3 + l^4 + l*(-8 - (6*I)*
                       \[Omega]2) + l^2*(-7 - (6*I)*\[Omega]2) + (24*I)*
                     \[Omega]2) + (12*I)*(-2 + l + l^2)*\[Omega]2) + 
                4*(-2 + l1 + l1^2)*\[Omega]1^4*(l^4*(-1 - (3*I)*\[Omega]2) + 
                  3*l^2*(1 + (5*I)*\[Omega]2) + l^3*(-2 - (6*I)*\[Omega]2) + 
                  2*l*(2 + (9*I)*\[Omega]2) - 4*(1 + (6*I)*\[Omega]2 + 
                    18*\[Omega]2^2)) - 2*\[Omega]1^3*\[Omega]2*
                 (-3*l^5*(-2 + l1 + l1^2) - l^6*(-2 + l1 + l1^2) + 
                  4*l*(2*(7 + (9*I)*\[Omega]2) + l1*(-7 - (21*I)*\[Omega]2) + 
                    l1^2*(-7 - (21*I)*\[Omega]2)) + 6*l^2*(6 + 
                    l1*(-3 - (10*I)*\[Omega]2) + l1^2*(-3 - (10*I)*
                       \[Omega]2) + (8*I)*\[Omega]2) + l^4*(-14 + 
                    l1*(7 + (24*I)*\[Omega]2) + l1^2*(7 + (24*I)*\[Omega]2) - 
                    (24*I)*\[Omega]2) + l^3*(-38 + l1*(19 + (48*I)*
                       \[Omega]2) + l1^2*(19 + (48*I)*\[Omega]2) - 
                    (48*I)*\[Omega]2) + 24*(-2*(1 + I*\[Omega]2 + 
                      12*\[Omega]2^2) + l1*(1 + (3*I)*\[Omega]2 + 
                      12*\[Omega]2^2) + l1^2*(1 + (3*I)*\[Omega]2 + 
                      12*\[Omega]2^2))) + \[Omega]1^2*\[Omega]2^2*
                 (8*l^7*(-2 + l1 + l1^2) + 2*l^8*(-2 + l1 + l1^2) + 
                  l^6*(2 - 3*l1 - 2*l1^2 + 2*l1^3 + l1^4) + l^5*(62 - 37*l1 - 
                    34*l1^2 + 6*l1^3 + 3*l1^4) + l^4*(30 + 10*l1^3 + 5*l1^4 + 
                    l1*(-25 - (48*I)*\[Omega]2) + l1^2*(-20 - (48*I)*
                       \[Omega]2)) + l^3*(-62 + 10*l1^3 + 5*l1^4 + 
                    3*l1*(7 - (32*I)*\[Omega]2) + l1^2*(26 - (96*I)*
                       \[Omega]2)) + 4*l*(-2 + l1^4*(-5 - (6*I)*\[Omega]2) + 
                    6*l1^2*(1 + (7*I)*\[Omega]2) + l1^3*(-10 - (12*I)*
                       \[Omega]2) + l1*(11 + (48*I)*\[Omega]2) + (24*I)*
                     \[Omega]2) + 2*l^2*(-26 + l1^4*(-9 - (12*I)*\[Omega]2) + 
                    l1^3*(-18 - (24*I)*\[Omega]2) + l1^2*(22 + (60*I)*
                       \[Omega]2) + l1*(31 + (72*I)*\[Omega]2) + (48*I)*
                     \[Omega]2) + (24*I)*(-2*I - 8*\[Omega]2 - (24*I)*
                     \[Omega]2^2 + l1^4*(-I + 2*\[Omega]2) + l1^3*(-2*I + 
                      4*\[Omega]2) + (2*I)*l1^2*(1 + (3*I)*\[Omega]2 + 
                      6*\[Omega]2^2) + I*l1*(3 + (8*I)*\[Omega]2 + 
                      12*\[Omega]2^2)))))*JS[{l1, 0}, {l2, 0}, {l, 0}] + 
            \[Omega]1*\[Omega]2*(-((-2 + l1 + l1^2)*(-4*(l*l2)^(3/2)*
                  Sqrt[((1 + 2*l)*(1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/(1 + l)] + 
                 10*(l*l2)^(5/2)*Sqrt[((1 + 2*l)*(1 + 2*l1)*(1 + 3*l2 + 
                      2*l2^2))/(1 + l)] - 8*l2^(3/2)*Sqrt[(l*(1 + 2*l)*
                     (1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/(1 + l)] - 8*l2^(5/2)*
                  Sqrt[(l*(1 + 2*l)*(1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/
                    (1 + l)] + 16*Sqrt[(l*(1 + 2*l)*(1 + 2*l1)*l2*(1 + 3*l2 + 
                      2*l2^2))/(1 + l)] + l^(5/2)*(10*l2^(3/2)*Sqrt[
                     ((1 + 2*l)*(1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/(1 + l)] - 
                   20*Sqrt[((1 + 2*l)*(1 + 2*l1)*l2*(1 + 3*l2 + 2*l2^2))/
                      (1 + l)]) + l^(9/2)*(2*l2^(3/2)*Sqrt[((1 + 2*l)*
                       (1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/(1 + l)] + 2*l2^(5/2)*
                    Sqrt[((1 + 2*l)*(1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/
                      (1 + l)] - 4*Sqrt[((1 + 2*l)*(1 + 2*l1)*l2*(1 + 3*l2 + 
                        2*l2^2))/(1 + l)]) + 9*l^(7/2)*(l2^(3/2)*
                    Sqrt[((1 + 2*l)*(1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/
                      (1 + l)] + l2^(5/2)*Sqrt[((1 + 2*l)*(1 + 2*l1)*
                       (1 + 3*l2 + 2*l2^2))/(1 + l)] - 2*Sqrt[((1 + 2*l)*
                       (1 + 2*l1)*l2*(1 + 3*l2 + 2*l2^2))/(1 + l)]) + 
                 l^(15/2)*(-(l2^(3/2)*Sqrt[((1 + 2*l)*(1 + 2*l1)*(1 + 3*l2 + 
                         2*l2^2))/(1 + l)]) - l2^(5/2)*Sqrt[((1 + 2*l)*
                       (1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/(1 + l)] + 
                   2*Sqrt[((1 + 2*l)*(1 + 2*l1)*l2*(1 + 3*l2 + 2*l2^2))/
                      (1 + l)]) + l^(3/2)*(-4*l2^(5/2)*Sqrt[((1 + 2*l)*
                       (1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/(1 + l)] + 
                   8*Sqrt[((1 + 2*l)*(1 + 2*l1)*l2*(1 + 3*l2 + 2*l2^2))/
                      (1 + l)]) + l^(11/2)*(-4*l2^(3/2)*Sqrt[((1 + 2*l)*
                       (1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/(1 + l)] - 4*l2^(5/2)*
                    Sqrt[((1 + 2*l)*(1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/
                      (1 + l)] + 8*Sqrt[((1 + 2*l)*(1 + 2*l1)*l2*(1 + 3*l2 + 
                        2*l2^2))/(1 + l)]) + l^(13/2)*(-4*l2^(3/2)*
                    Sqrt[((1 + 2*l)*(1 + 2*l1)*(1 + 3*l2 + 2*l2^2))/
                      (1 + l)] - 4*l2^(5/2)*Sqrt[((1 + 2*l)*(1 + 2*l1)*
                       (1 + 3*l2 + 2*l2^2))/(1 + l)] + 8*Sqrt[((1 + 2*l)*
                       (1 + 2*l1)*l2*(1 + 3*l2 + 2*l2^2))/(1 + l)]))*
                \[Omega]1*\[Omega]2*JS[{l1, 0}, {l2, 1}, {l, -1}]) + 
              (-2 + l2 + l2^2)*((-4*I)*l*(1 + l)*(-2 + l + l^2)^3*
                 (-2 + l1 + l1^2)*NUMERIC*Sqrt[Pi]*(\[Omega]1 + \[Omega]2) + 
                2*(-2 + l + l^2)^3*(-2 + l1 + l1^2)*Sqrt[(1 + 2*l)*l1*
                   (1 + 3*l1 + 2*l1^2)*l2*(1 + 3*l2 + 2*l2^2)]*\[Omega]1*
                 \[Omega]2*JS[{l1, 1}, {l2, -1}, {l, 0}] + 
                (4*(l*l1)^(3/2)*Sqrt[((1 + 2*l)*(1 + 3*l1 + 2*l1^2)*
                      (1 + 2*l2))/(1 + l)] - 10*(l*l1)^(5/2)*Sqrt[
                    ((1 + 2*l)*(1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/(1 + l)] + 
                  l^(3/2)*(4*l1^(5/2)*Sqrt[((1 + 2*l)*(1 + 3*l1 + 2*l1^2)*
                        (1 + 2*l2))/(1 + l)] - 8*Sqrt[((1 + 2*l)*l1*
                        (1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/(1 + l)]) + 
                  l^(11/2)*(4*l1^(3/2)*Sqrt[((1 + 2*l)*(1 + 3*l1 + 2*l1^2)*
                        (1 + 2*l2))/(1 + l)] + 4*l1^(5/2)*Sqrt[((1 + 2*l)*
                        (1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/(1 + l)] - 
                    8*Sqrt[((1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/
                       (1 + l)]) + l^(13/2)*(4*l1^(3/2)*Sqrt[((1 + 2*l)*
                        (1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/(1 + l)] + 4*l1^(5/2)*
                     Sqrt[((1 + 2*l)*(1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/
                       (1 + l)] - 8*Sqrt[((1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*
                        (1 + 2*l2))/(1 + l)]) + l^(15/2)*(l1^(3/2)*
                     Sqrt[((1 + 2*l)*(1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/
                       (1 + l)] + l1^(5/2)*Sqrt[((1 + 2*l)*(1 + 3*l1 + 
                         2*l1^2)*(1 + 2*l2))/(1 + l)] - 2*Sqrt[((1 + 2*l)*l1*
                        (1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/(1 + l)]) + 
                  10*l^(5/2)*(-(l1^(3/2)*Sqrt[((1 + 2*l)*(1 + 3*l1 + 2*l1^2)*
                         (1 + 2*l2))/(1 + l)]) + 2*Sqrt[((1 + 2*l)*l1*
                        (1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/(1 + l)]) + 
                  9*l^(7/2)*(-(l1^(3/2)*Sqrt[((1 + 2*l)*(1 + 3*l1 + 2*l1^2)*
                         (1 + 2*l2))/(1 + l)]) - l1^(5/2)*Sqrt[((1 + 2*l)*
                        (1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/(1 + l)] + 
                    2*Sqrt[((1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/
                       (1 + l)]) + l^(9/2)*(-2*l1^(3/2)*Sqrt[((1 + 2*l)*
                        (1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/(1 + l)] - 2*l1^(5/2)*
                     Sqrt[((1 + 2*l)*(1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/
                       (1 + l)] + 4*Sqrt[((1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*
                        (1 + 2*l2))/(1 + l)]) + 8*(l1^(3/2)*Sqrt[
                      (l*(1 + 2*l)*(1 + 3*l1 + 2*l1^2)*(1 + 2*l2))/(1 + l)] + 
                    l1^(5/2)*Sqrt[(l*(1 + 2*l)*(1 + 3*l1 + 2*l1^2)*(1 + 
                         2*l2))/(1 + l)] - 2*Sqrt[(l*(1 + 2*l)*l1*(1 + 3*l1 + 
                         2*l1^2)*(1 + 2*l2))/(1 + l)]))*\[Omega]1*\[Omega]2*
                 JS[{l1, 1}, {l2, 0}, {l, -1}])))/(l*(1 + l)*(-2 + l + l^2)^3*
            (-2 + l1 + l1^2)*(-2 + l2 + l2^2))))/
        (Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)]*
         Sqrt[l2*(-2 - l2 + 2*l2^2 + l2^3)]*\[Omega]1*\[Omega]2)))/
     (Sqrt[Pi]*(\[Omega]1 + \[Omega]2)^2)
REEO = (-1/32*I)*Sqrt[-1 - 2/l + 2*l + l^2]*
     ((64*l*(-2*Sqrt[l*(1 + l)] + Sqrt[l^3*(1 + l)] + Sqrt[l^5*(1 + l)])*
        NUMERIC)/((-2 + l + l^2)*Sqrt[l*(1 + l)*l1*(-2 - l1 + 2*l1^2 + l1^3)*
          l2]*Sqrt[-2 - l2 + 2*l2^2 + l2^3]) - 
      (Sqrt[l*(-2 - 5*l + 5*l^3 + 2*l^4)*(1 + 2*l1)*(1 + 2*l2)]*
        (\[Omega]1 + \[Omega]2)*((-8*JS[{l1, -2}, {l2, 0}, {l, 2}])/
          Sqrt[l2*(-2 - l2 + 2*l2^2 + l2^3)] - 
         (8*JS[{l1, 0}, {l2, -2}, {l, 2}])/Sqrt[l1*(-2 - l1 + 2*l1^2 + 
             l1^3)]))/((-1 + l)*(1 + l)*(2 + l)*Sqrt[Pi]) + 
      (16*l*(Sqrt[l1*(1 + l1)]*\[Omega]2*JS[{l1, -1}, {l2, 0}, {l, 1}] + 
         Sqrt[l2*(1 + l2)]*\[Omega]1*JS[{l1, 0}, {l2, -1}, {l, 1}]))/
       (Sqrt[(l*(1 + l)*l1*(-2 - l1 + 2*l1^2 + l1^3)*l2)/
          ((1 + 2*l)*(1 + 2*l1)*(1 + 2*l2))]*Sqrt[-2 - l2 + 2*l2^2 + l2^3]*
        Sqrt[Pi]))
