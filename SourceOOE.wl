SourceOOE = ((-1)^m*Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*
      JS[{l1, m1}, {l2, m2}, {l, -m}]*
      ((-32*l1*(1 + l1)*l2*(1 + l2)*(1 - (2*M)/r)*\[Omega]1*\[Omega]2*
         JS[{l1, 0}, {l2, 0}, {l, 0}]*\[Psi]1l1o[r]*\[Psi]1l2o[r])/
        (l*(1 + l)*(6*M + (-2 + l + l^2)*r)) - 
       (8*l1*(1 + l1)*l2*(1 + l2)*(96*M^2 + 2*(-32 + 7*l + 7*l^2)*M*r + 
          (8 - 6*l - 5*l^2 + 2*l^3 + l^4)*r^2)*\[Omega]1*\[Omega]2*
         JS[{l1, 0}, {l2, 0}, {l, 0}]*\[Psi]1l1o[r]*\[Psi]1l2o[r])/
        (l*(1 + l)*r*(6*M + (-2 + l + l^2)*r)^2) - 
       (32*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*(2*M - r)*
         (72*M^3 + 36*(-2 + l + l^2)*M^2*r + 6*(-2 + l + l^2)^2*M*r^2 + 
          l*(1 + l)*(-2 + l + l^2)^2*r^3)*\[Omega]1*\[Omega]2*
         JS[{l1, 1}, {l2, -1}, {l, 0}]*\[Psi]1l1o[r]*\[Psi]1l2o[r])/
        (l*(1 + l)*(-2 + l + l^2)*r^3*(6*M + (-2 + l + l^2)*r)^2) - 
       (32*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*r*\[Omega]1*\[Omega]2*
         (\[Omega]1 + \[Omega]2)^2*JS[{l1, 1}, {l2, -1}, {l, 0}]*
         \[Psi]1l1o[r]*\[Psi]1l2o[r])/(l*(1 + l)*(-2 + l + l^2)) - 
       (32*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*\[Omega]1*\[Omega]2*
         (20*M^2 - 2*(5 + l1 + l1^2 + l2 + l2^2)*M*r + 
          r^2*(l1 + l1^2 + l2 + l2^2 - r^2*(\[Omega]1^2 + \[Omega]2^2)))*
         JS[{l1, 1}, {l2, -1}, {l, 0}]*\[Psi]1l1o[r]*\[Psi]1l2o[r])/
        (l*(1 + l)*(-2 + l + l^2)*r^3) - (16*l1*(1 + l1)*l2*(1 + l2)*
         (2*M - r)*\[Omega]1*\[Omega]2*JS[{l1, 0}, {l2, 0}, {l, 0}]*
         \[Psi]1l2o[r]*Derivative[1][\[Psi]1l1o][r])/
        (l*(1 + l)*(6*M + (-2 + l + l^2)*r)) - 
       (64*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*(-2*M + r)^2*\[Omega]1*\[Omega]2*
         JS[{l1, 1}, {l2, -1}, {l, 0}]*\[Psi]1l2o[r]*
         Derivative[1][\[Psi]1l1o][r])/(l*(1 + l)*(-2 + l + l^2)*r^2) - 
       (16*l1*(1 + l1)*l2*(1 + l2)*(2*M - r)*\[Omega]1*\[Omega]2*
         JS[{l1, 0}, {l2, 0}, {l, 0}]*\[Psi]1l1o[r]*Derivative[1][\[Psi]1l2o][
          r])/(l*(1 + l)*(6*M + (-2 + l + l^2)*r)) - 
       (64*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*(-2*M + r)^2*\[Omega]1*\[Omega]2*
         JS[{l1, 1}, {l2, -1}, {l, 0}]*\[Psi]1l1o[r]*
         Derivative[1][\[Psi]1l2o][r])/(l*(1 + l)*(-2 + l + l^2)*r^2) - 
       (64*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*(-2*M + r)^2*\[Omega]1*\[Omega]2*
         JS[{l1, 1}, {l2, -1}, {l, 0}]*Derivative[1][\[Psi]1l1o][r]*
         Derivative[1][\[Psi]1l2o][r])/(l*(1 + l)*(-2 + l + l^2)*r) - 
       (8*l1*(1 + l1)*l2*(1 + l2)*(-2*M + r)^2*JS[{l1, 0}, {l2, 0}, {l, 0}]*
         (\[Psi]1l1o[r] + r*Derivative[1][\[Psi]1l1o][r])*
         (\[Psi]1l2o[r] + r*Derivative[1][\[Psi]1l2o][r]))/
        (r^4*(6*M + (-2 + l + l^2)*r)) - (8*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*
         (1 - (2*M)/r)*(\[Omega]1 + \[Omega]2)*JS[{l1, 1}, {l2, -1}, {l, 0}]*
         (-(((8*M^2*(\[Omega]1 + \[Omega]2) - 2*M*r*((2 + l2 + l2^2)*
                 \[Omega]1 + (2 + l1 + l1^2)*\[Omega]2) + r^2*(l2*\[Omega]1 + 
                l2^2*\[Omega]1 + \[Omega]2*(l1 + l1^2 - 4*r^2*\[Omega]1*
                   (\[Omega]1 + \[Omega]2))))*\[Psi]1l1o[r]*\[Psi]1l2o[r])/
            (2*M - r)) - 4*M*r*\[Omega]2*\[Psi]1l2o[r]*
           Derivative[1][\[Psi]1l1o][r] + l1*(1 + l1)*r^2*\[Omega]2*
           \[Psi]1l2o[r]*Derivative[1][\[Psi]1l1o][r] + 
          (4*M + (-2 + l2 + l2^2)*r)*\[Omega]2*\[Psi]1l2o[r]*
           (\[Psi]1l1o[r] + r*Derivative[1][\[Psi]1l1o][r]) + 
          r*(-4*M + l2*(1 + l2)*r)*\[Omega]1*\[Psi]1l1o[r]*
           Derivative[1][\[Psi]1l2o][r] + (4*M + (-2 + l1 + l1^2)*r)*
           \[Omega]1*\[Psi]1l1o[r]*(\[Psi]1l2o[r] + 
            r*Derivative[1][\[Psi]1l2o][r])))/(l*(1 + l)*r*
         (6*M + (-2 + l + l^2)*r)) + 
       (48*Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)*l2*(-2 - l2 + 2*l2^2 + l2^3)]*
         (2*M - r)*JS[{l1, 2}, {l2, -2}, {l, 0}]*
         (r*(-2*M + r)^2*Derivative[1][\[Psi]1l1o][r]*(\[Psi]1l2o[r] + 
            r*Derivative[1][\[Psi]1l2o][r]) + \[Psi]1l1o[r]*
           ((4*M^2 - 4*M*r + r^2 + r^4*\[Omega]1*\[Omega]2)*\[Psi]1l2o[r] + 
            r*(-2*M + r)^2*Derivative[1][\[Psi]1l2o][r])))/
        (l*(1 + l)*r^5*(6*M + (-2 + l + l^2)*r)) - 
       (4*Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)*l2*(-2 - l2 + 2*l2^2 + l2^3)]*
         JS[{l1, 2}, {l2, -2}, {l, 0}]*(r*(-2*M + r)^2*
           Derivative[1][\[Psi]1l1o][r]*(\[Psi]1l2o[r] + 
            r*Derivative[1][\[Psi]1l2o][r]) + \[Psi]1l1o[r]*
           ((4*M^2 - 4*M*r + r^2 + r^4*\[Omega]1*\[Omega]2)*\[Psi]1l2o[r] + 
            r*(-2*M + r)^2*Derivative[1][\[Psi]1l2o][r])))/
        (r^4*(6*M + (-2 + l + l^2)*r)) - 
       (4*Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)*l2*(-2 - l2 + 2*l2^2 + l2^3)]*
         (96*M^2 + 2*(-32 + 7*l + 7*l^2)*M*r + (8 - 6*l - 5*l^2 + 2*l^3 + 
            l^4)*r^2)*JS[{l1, 2}, {l2, -2}, {l, 0}]*
         (r*(-2*M + r)^2*Derivative[1][\[Psi]1l1o][r]*(\[Psi]1l2o[r] + 
            r*Derivative[1][\[Psi]1l2o][r]) + \[Psi]1l1o[r]*
           ((4*M^2 - 4*M*r + r^2 + r^4*\[Omega]1*\[Omega]2)*\[Psi]1l2o[r] + 
            r*(-2*M + r)^2*Derivative[1][\[Psi]1l2o][r])))/
        (l*(1 + l)*r^5*(6*M + (-2 + l + l^2)*r)^2) + 
       (8*Sqrt[l*(-2 - l + 2*l^2 + l^3)*l1*(1 + l1)*l2*(1 + l2)]*
         (1 - (2*M)/r)*(2*M - r)*JS[{l1, 1}, {l2, 1}, {l, -2}]*
         (-((-2 + l1 + l1^2 + l2 + l2^2)*r*(-2*M + r)^2*
            Derivative[1][\[Psi]1l1o][r]*(\[Psi]1l2o[r] + 
             r*Derivative[1][\[Psi]1l2o][r])) - \[Psi]1l1o[r]*
           ((4*(-2 + l1 + l1^2 + l2 + l2^2)*M^2 - 2*l1*(1 + l1)*l2*(1 + l2)*M*
               r + r^2*((-2 + l2 + l2^2)*(-1 + r^2*\[Omega]1*\[Omega]2) + 
                l1*(-1 + l2 + l2^2 + r^2*\[Omega]1*\[Omega]2) + 
                l1^2*(-1 + l2 + l2^2 + r^2*\[Omega]1*\[Omega]2)))*
             \[Psi]1l2o[r] + (-2 + l1 + l1^2 + l2 + l2^2)*r*(-2*M + r)^2*
             Derivative[1][\[Psi]1l2o][r])))/((-1 + l)*l*(1 + l)*(2 + l)*r^4*
         (-2*M + r)^2) - (8*l1*(1 + l1)*l2*(1 + l2)*(1 - (2*M)/r)*
         (\[Omega]1 + \[Omega]2)*JS[{l1, 0}, {l2, 0}, {l, 0}]*
         (r*\[Omega]2*\[Psi]1l2o[r]*Derivative[1][\[Psi]1l1o][r] + 
          \[Psi]1l1o[r]*((\[Omega]1 + \[Omega]2)*\[Psi]1l2o[r] + 
            r*\[Omega]1*Derivative[1][\[Psi]1l2o][r])))/
        (l*(1 + l)*(6*M + (-2 + l + l^2)*r)) + 
       (Sqrt[(l1 + l1^2)/(l + l^2)]*l2*(1 + l2)*(1 - (2*M)/r)*(-8*M + 4*r)*
         JS[{l1, 1}, {l2, 0}, {l, -1}]*
         (-((2*M - r)*r*Derivative[1][\[Psi]1l1o][r]*
            ((12*M^2 - 2*(-1 + 3*l2 + 3*l2^2)*M*r + r^2*(-4 + 3*l2 + 3*l2^2 + 
                 2*r^2*\[Omega]1*\[Omega]2))*\[Psi]1l2o[r] + 
             2*r*(6*M^2 - 5*M*r + r^2)*Derivative[1][\[Psi]1l2o][r])) + 
          \[Psi]1l1o[r]*((-24*M^3 + 4*(l1 + l1^2 + 3*l2*(1 + l2))*M^2*r + 
              r^3*(-6 + l1 + l1^2 + 3*l2 + 3*l2^2 - 2*r^2*\[Omega]1^2) + 
              2*M*r^2*(9 - 2*l1 - 2*l1^2 - 6*l2 - 6*l2^2 + 2*r^2*\[Omega]1^
                  2 - r^2*\[Omega]1*\[Omega]2))*\[Psi]1l2o[r] - 
            (2*M - r)*r*(12*M^2 - 2*(3 + l1 + l1^2)*M*r + r^2*(l1 + l1^2 - 
                2*r^2*\[Omega]1^2))*Derivative[1][\[Psi]1l2o][r])))/
        (r^4*(-2*M + r)^2*(6*M + (-2 + l + l^2)*r)) + 
       (Sqrt[(l1*(-2 - l1 + 2*l1^2 + l1^3)*l2*(1 + l2))/(l*(1 + l))]*
         (1 - (2*M)/r)*(-8*M + 4*r)*JS[{l1, 2}, {l2, -1}, {l, -1}]*
         (-((2*M - r)*r*Derivative[1][\[Psi]1l1o][r]*
            ((12*M^2 - 2*(3 + l2 + l2^2)*M*r + r^2*(l2 + l2^2 + 
                 2*r^2*\[Omega]1*\[Omega]2))*\[Psi]1l2o[r] + 
             2*r*(6*M^2 - 5*M*r + r^2)*Derivative[1][\[Psi]1l2o][r])) + 
          \[Psi]1l1o[r]*((-24*M^3 + 4*(4 + l1 + l1^2 + l2 + l2^2)*M^2*r + 
              r^3*(-2 + l1 + l1^2 + l2 + l2^2 - 2*r^2*\[Omega]1^2) + 
              2*M*r^2*(1 - 2*l1 - 2*l1^2 - 2*l2 - 2*l2^2 + 2*r^2*\[Omega]1^
                  2 - r^2*\[Omega]1*\[Omega]2))*\[Psi]1l2o[r] - 
            (2*M - r)*r*(12*M^2 - 2*(3 + l1 + l1^2)*M*r + r^2*(l1 + l1^2 - 
                2*r^2*\[Omega]1^2))*Derivative[1][\[Psi]1l2o][r])))/
        (r^4*(-2*M + r)^2*(6*M + (-2 + l + l^2)*r)) + 
       (40*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*(2*M - r)*JS[{l1, 1}, {l2, -1}, 
          {l, 0}]*(4*r^3*(-2*M + r)*\[Omega]1*\[Omega]2*\[Psi]1l2o[r]*
           Derivative[1][\[Psi]1l1o][r] + \[Psi]1l1o[r]*
           ((2*M*(l1*(-2 + l2 + l2^2) + l1^2*(-2 + l2 + l2^2) - 
                2*(-2 + l2 + l2^2 + 2*r^2*\[Omega]1*\[Omega]2)) + 
              r*(-(l1*(-2 + l2 + l2^2 - 2*r^2*\[Omega]1*\[Omega]2)) - 
                l1^2*(-2 + l2 + l2^2 - 2*r^2*\[Omega]1*\[Omega]2) + 
                2*(-2 + l2 + l2^2 + l2*r^2*\[Omega]1*\[Omega]2 + l2^2*r^2*
                   \[Omega]1*\[Omega]2)))*\[Psi]1l2o[r] + 4*r^3*(-2*M + r)*
             \[Omega]1*\[Omega]2*Derivative[1][\[Psi]1l2o][r])))/
        (l*(1 + l)*r^4*(6*M + (-2 + l + l^2)*r)) - 
       (4*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*(96*M^2 + 2*(-32 + 7*l + 7*l^2)*M*r + 
          (8 - 6*l - 5*l^2 + 2*l^3 + l^4)*r^2)*JS[{l1, 1}, {l2, -1}, {l, 0}]*
         (4*r^3*(-2*M + r)*\[Omega]1*\[Omega]2*\[Psi]1l2o[r]*
           Derivative[1][\[Psi]1l1o][r] + \[Psi]1l1o[r]*
           ((2*M*(l1*(-2 + l2 + l2^2) + l1^2*(-2 + l2 + l2^2) - 
                2*(-2 + l2 + l2^2 + 2*r^2*\[Omega]1*\[Omega]2)) + 
              r*(-(l1*(-2 + l2 + l2^2 - 2*r^2*\[Omega]1*\[Omega]2)) - 
                l1^2*(-2 + l2 + l2^2 - 2*r^2*\[Omega]1*\[Omega]2) + 
                2*(-2 + l2 + l2^2 + l2*r^2*\[Omega]1*\[Omega]2 + l2^2*r^2*
                   \[Omega]1*\[Omega]2)))*\[Psi]1l2o[r] + 4*r^3*(-2*M + r)*
             \[Omega]1*\[Omega]2*Derivative[1][\[Psi]1l2o][r])))/
        (l*(1 + l)*r^4*(6*M + (-2 + l + l^2)*r)^2) + 
       (Sqrt[(l1*(1 + l1)*l2*(-2 - l2 + 2*l2^2 + l2^3))/(l*(1 + l))]*
         (1 - (2*M)/r)*(-8*M + 4*r)*JS[{l1, 1}, {l2, -2}, {l, 1}]*
         (-((2*M - r)*r*Derivative[1][\[Psi]1l1o][r]*
            ((12*M^2 - 2*(3 + l2 + l2^2)*M*r + r^2*(l2 + l2^2 - 
                 2*r^2*\[Omega]2^2))*\[Psi]1l2o[r] + 2*r*(6*M^2 - 5*M*r + r^
                2)*Derivative[1][\[Psi]1l2o][r])) + \[Psi]1l1o[r]*
           ((-24*M^3 + 4*(4 + l1 + l1^2 + l2 + l2^2)*M^2*r + r^3*(-2 + l1 + 
                l1^2 + l2 + l2^2 - 2*r^2*\[Omega]2^2) - 2*M*r^2*(-1 + 2*l1 + 
                2*l1^2 + 2*l2 + 2*l2^2 + r^2*\[Omega]1*\[Omega]2 - 
                2*r^2*\[Omega]2^2))*\[Psi]1l2o[r] - (2*M - r)*r*
             (12*M^2 - 2*(3 + l1 + l1^2)*M*r + r^2*(l1 + l1^2 + 
                2*r^2*\[Omega]1*\[Omega]2))*Derivative[1][\[Psi]1l2o][r])))/
        (r^4*(-2*M + r)^2*(6*M + (-2 + l + l^2)*r)) + 
       (l1*(1 + l1)*Sqrt[(l2 + l2^2)/(l + l^2)]*(1 - (2*M)/r)*(-8*M + 4*r)*
         JS[{l1, 0}, {l2, 1}, {l, -1}]*
         (-((2*M - r)*r*Derivative[1][\[Psi]1l1o][r]*
            ((12*M^2 - 2*(3 + l2 + l2^2)*M*r + r^2*(l2 + l2^2 - 
                 2*r^2*\[Omega]2^2))*\[Psi]1l2o[r] + 2*r*(6*M^2 - 5*M*r + r^
                2)*Derivative[1][\[Psi]1l2o][r])) + \[Psi]1l1o[r]*
           ((-24*M^3 + 4*(3*l1 + 3*l1^2 + l2 + l2^2)*M^2*r + r^3*(-6 + 3*l1 + 
                3*l1^2 + l2 + l2^2 - 2*r^2*\[Omega]2^2) - 2*M*r^2*(-9 + 
                6*l1 + 6*l1^2 + 2*l2 + 2*l2^2 + r^2*\[Omega]1*\[Omega]2 - 
                2*r^2*\[Omega]2^2))*\[Psi]1l2o[r] - (2*M - r)*r*
             (12*M^2 - 2*(-1 + 3*l1 + 3*l1^2)*M*r + r^2*(-4 + 3*l1 + 3*l1^2 + 
                2*r^2*\[Omega]1*\[Omega]2))*Derivative[1][\[Psi]1l2o][r])))/
        (r^4*(-2*M + r)^2*(6*M + (-2 + l + l^2)*r)) - 
       (4*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*(1 - (2*M)/r)*JS[{l1, 1}, {l2, -1}, 
          {l, 0}]*(2*(2*M - r)*r*Derivative[1][\[Psi]1l1o][r]*
           ((24*M^2 + 2*(-8 + l1 + l1^2 - l2 - l2^2)*M*r + r^2*(2 - l1 - 
                l1^2 + l2 + l2^2 + 2*r^2*\[Omega]1*\[Omega]2))*
             \[Psi]1l2o[r] + (2*M - r)*r*(12*M + (-6 + l1 + l1^2 + l2 + l2^2)*
               r)*Derivative[1][\[Psi]1l2o][r]) + \[Psi]1l1o[r]*
           ((96*M^3 - 8*(10 + l1 + l1^2 + l2 + l2^2)*M^2*r - 
              r^3*(l1*l2*(1 + l2) + l1^2*l2*(1 + l2) + 4*r^2*\[Omega]1*
                 \[Omega]2) + 2*M*r^2*(l1*(2 + l2 + l2^2) + 
                l1^2*(2 + l2 + l2^2) + 2*(4 + l2 + l2^2 + 4*r^2*\[Omega]1*
                   \[Omega]2)))*\[Psi]1l2o[r] + 2*(2*M - r)*r*
             (24*M^2 - 2*(8 + l1 + l1^2 - l2 - l2^2)*M*r + r^2*(2 + l1 + 
                l1^2 - l2 - l2^2 + 2*r^2*\[Omega]1*\[Omega]2))*
             Derivative[1][\[Psi]1l2o][r])))/(r^4*(-2*M + r)*
         (6*M + (-2 + l + l^2)*r)) + 
       (8*Sqrt[l1*(-2 - l1 + 2*l1^2 + l1^3)*l2*(-2 - l2 + 2*l2^2 + l2^3)]*
         (2*M - r)*JS[{l1, 2}, {l2, -2}, {l, 0}]*
         (-(r*Derivative[1][\[Psi]1l1o][r]*((24*M^2 - 2*(10 + l2 + l2^2)*M*
                r + r^2*(4 + l2 + l2^2 + r^2*(\[Omega]1 - \[Omega]2)*
                  \[Omega]2))*\[Psi]1l2o[r] + 6*r*(-2*M + r)^2*
              Derivative[1][\[Psi]1l2o][r])) - \[Psi]1l1o[r]*
           ((24*M^2 - 2*(8 + l1 + l1^2 + l2 + l2^2)*M*r + r^2*(2 + l1 + 
                l1^2 + l2 + l2^2 - r^2*\[Omega]1^2 + 4*r^2*\[Omega]1*
                 \[Omega]2 - r^2*\[Omega]2^2))*\[Psi]1l2o[r] + 
            r*(24*M^2 - 2*(10 + l1 + l1^2)*M*r + r^2*(4 + l1 + l1^2 + 
                r^2*\[Omega]1*(-\[Omega]1 + \[Omega]2)))*
             Derivative[1][\[Psi]1l2o][r])))/(l*(1 + l)*r^5*
         (6*M + (-2 + l + l^2)*r)) + (8*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*
         (1 - (2*M)/r)*JS[{l1, 1}, {l2, -1}, {l, 0}]*
         (4*r^3*\[Omega]1*\[Omega]2*\[Psi]1l2o[r]*Derivative[1][\[Psi]1l1o][
            r] + 12*r^2*(-2*M + r)*\[Omega]1*\[Omega]2*\[Psi]1l2o[r]*
           Derivative[1][\[Psi]1l1o][r] + (4*r*\[Omega]1*\[Omega]2*
            \[Psi]1l2o[r]*((12*M^2 - 2*(3 + l1 + l1^2)*M*r + r^2*
                (l1 + l1^2 - r^2*\[Omega]1^2))*\[Psi]1l1o[r] + 
             2*M*(2*M - r)*r*Derivative[1][\[Psi]1l1o][r]))/(-2*M + r) + 
          4*r^3*(-2*M + r)*\[Omega]1*\[Omega]2*Derivative[1][\[Psi]1l1o][r]*
           Derivative[1][\[Psi]1l2o][r] + Derivative[1][\[Psi]1l1o][r]*
           ((2*M*(l1*(-2 + l2 + l2^2) + l1^2*(-2 + l2 + l2^2) - 
                2*(-2 + l2 + l2^2 + 2*r^2*\[Omega]1*\[Omega]2)) + 
              r*(-(l1*(-2 + l2 + l2^2 - 2*r^2*\[Omega]1*\[Omega]2)) - 
                l1^2*(-2 + l2 + l2^2 - 2*r^2*\[Omega]1*\[Omega]2) + 
                2*(-2 + l2 + l2^2 + l2*r^2*\[Omega]1*\[Omega]2 + l2^2*r^2*
                   \[Omega]1*\[Omega]2)))*\[Psi]1l2o[r] + 4*r^3*(-2*M + r)*
             \[Omega]1*\[Omega]2*Derivative[1][\[Psi]1l2o][r]) + 
          \[Psi]1l1o[r]*(-((l1*(-2 + l2 + l2^2 - 6*r^2*\[Omega]1*\[Omega]2) + 
               l1^2*(-2 + l2 + l2^2 - 6*r^2*\[Omega]1*\[Omega]2) - 2*
                (-2 + l2 - 8*M*r*\[Omega]1*\[Omega]2 + 3*l2*r^2*\[Omega]1*
                  \[Omega]2 + l2^2*(1 + 3*r^2*\[Omega]1*\[Omega]2)))*
              \[Psi]1l2o[r]) + 4*r^3*\[Omega]1*\[Omega]2*
             Derivative[1][\[Psi]1l2o][r] + 12*r^2*(-2*M + r)*\[Omega]1*
             \[Omega]2*Derivative[1][\[Psi]1l2o][r] + 
            (2*M*(l1*(-2 + l2 + l2^2) + l1^2*(-2 + l2 + l2^2) - 
                2*(-2 + l2 + l2^2 + 2*r^2*\[Omega]1*\[Omega]2)) + 
              r*(-(l1*(-2 + l2 + l2^2 - 2*r^2*\[Omega]1*\[Omega]2)) - 
                l1^2*(-2 + l2 + l2^2 - 2*r^2*\[Omega]1*\[Omega]2) + 
                2*(-2 + l2 + l2^2 + l2*r^2*\[Omega]1*\[Omega]2 + l2^2*r^2*
                   \[Omega]1*\[Omega]2)))*Derivative[1][\[Psi]1l2o][r] + 
            (4*r*\[Omega]1*\[Omega]2*((12*M^2 - 2*(3 + l2 + l2^2)*M*r + 
                 r^2*(l2 + l2^2 - r^2*\[Omega]2^2))*\[Psi]1l2o[r] + 2*M*
                (2*M - r)*r*Derivative[1][\[Psi]1l2o][r]))/(-2*M + r))))/
        (l*(1 + l)*r^2*(6*M + (-2 + l + l^2)*r))))/(32*Sqrt[Pi])
 
htr = SeriesData[r, Infinity, {NUMERIC*(\[Omega]1 + \[Omega]2)^2 - 
       (I*(-1)^m*Sqrt[(1 + 2*l)*l1*(1 + l1)*(1 + 2*l1)*l2*(1 + l2)*
           (1 + 2*l2)]*\[Omega]1*\[Omega]2*(\[Omega]1 + \[Omega]2)*
         JS[{l1, 1}, {l2, -1}, {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/
        (l*(1 + l)*(-2 + l + l^2)*Sqrt[Pi]) - I*(\[Omega]1 + \[Omega]2)*
        (((-1)^m*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*Sqrt[(1 + 2*l)*(1 + 2*l1)*
             (1 + 2*l2)]*\[Omega]1*\[Omega]2*JS[{l1, 1}, {l2, -1}, {l, 0}]*
           JS[{l1, m1}, {l2, m2}, {l, -m}])/(l*(1 + l)*(-2 + l + l^2)*
           Sqrt[Pi]) + ((2*I)*(-1)^m*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*
           Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*M*\[Omega]1^2*\[Omega]2*
           JS[{l1, 1}, {l2, -1}, {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/
          (l*(1 + l)*(-2 + l + l^2)*Sqrt[Pi]) + 
         ((2*I)*(-1)^m*Sqrt[l1*(1 + l1)*l2*(1 + l2)]*
           Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*M*\[Omega]1*\[Omega]2^2*
           JS[{l1, 1}, {l2, -1}, {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/
          (l*(1 + l)*(-2 + l + l^2)*Sqrt[Pi])) + 
       (2*(((-1/4*I)*(-1)^m*Sqrt[l1*(1 + l1)]*Sqrt[l2*(1 + l2)]*
            Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*\[Omega]1*\[Omega]2*
            (\[Omega]1 + \[Omega]2)*JS[{l1, 1}, {l2, -1}, {l, 0}]*
            JS[{l1, m1}, {l2, m2}, {l, -m}])/Sqrt[Pi] + 
          (\[Omega]1 + \[Omega]2)*((((-3*I)/4)*(-1)^m*Sqrt[l1*(1 + l1)]*
              Sqrt[l2*(1 + l2)]*Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*M*
              ((4*I)*\[Omega]1^2*\[Omega]2 + (4*I)*\[Omega]1*\[Omega]2^2)*
              JS[{l1, 1}, {l2, -1}, {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/
             ((-1 + l)^2*(2 + l)^2*Sqrt[Pi]) + 
            (((I/4)*(-1)^m*Sqrt[l1*(1 + l1)]*Sqrt[l2*(1 + l2)]*
                Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*M*((4*I)*\[Omega]1^2*
                  \[Omega]2 + (4*I)*\[Omega]1*\[Omega]2^2)*JS[{l1, 1}, 
                 {l2, -1}, {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/Sqrt[
                Pi] + (2*I)*(((-1)^m*l1*(1 + l1)*l2*(1 + l2)*Sqrt[(1 + 2*l)*
                    (1 + 2*l1)*(1 + 2*l2)]*\[Omega]1*\[Omega]2*JS[{l1, 0}, 
                   {l2, 0}, {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/
                 (8*Sqrt[Pi]) + ((-1)^m*Sqrt[l1*(1 + l1)]*Sqrt[l2*(1 + l2)]*
                  Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*(l1*\[Omega]1*
                    \[Omega]2 + l1^2*\[Omega]1*\[Omega]2 + l2*\[Omega]1*
                    \[Omega]2 + l2^2*\[Omega]1*\[Omega]2)*JS[{l1, 1}, 
                   {l2, -1}, {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/
                 (8*Sqrt[Pi])))/((-1 + l)*(2 + l)))))/
        (2 + (-1 + l)*(2 + l))}, 0, 1, 1]
 
hrr = SeriesData[r, Infinity, {I*(\[Omega]1 + \[Omega]2)*
       (I*NUMERIC*(\[Omega]1 + \[Omega]2) + 
        ((-1)^m*Sqrt[(1 + 2*l)*l1*(1 + l1)*(1 + 2*l1)*l2*(1 + l2)*(1 + 2*l2)]*
          \[Omega]1*\[Omega]2*JS[{l1, 1}, {l2, -1}, {l, 0}]*
          JS[{l1, m1}, {l2, m2}, {l, -m}])/(l*(1 + l)*(-2 + l + l^2)*
          Sqrt[Pi]) + ((-1)^m*Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*l2*
            (1 + 3*l2 + 2*l2^2)]*\[Omega]1*\[Omega]2*JS[{l1, 1}, {l2, -1}, 
           {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/(2*(-2 + l + l^2)*
          Sqrt[Pi]) + ((2*I)*(-1)^m*Sqrt[(1 + 2*l)*l1*(1 + l1)*(1 + 2*l1)*l2*
            (1 + l2)*(1 + 2*l2)]*M*\[Omega]1^2*\[Omega]2*
          JS[{l1, 1}, {l2, -1}, {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/
         (l*(1 + l)*(-2 + l + l^2)*Sqrt[Pi]) + 
        ((2*I)*(-1)^m*Sqrt[(1 + 2*l)*l1*(1 + l1)*(1 + 2*l1)*l2*(1 + l2)*
            (1 + 2*l2)]*M*\[Omega]1*\[Omega]2^2*JS[{l1, 1}, {l2, -1}, {l, 0}]*
          JS[{l1, m1}, {l2, m2}, {l, -m}])/(l*(1 + l)*(-2 + l + l^2)*
          Sqrt[Pi]) + ((6*I)*(-1)^m*Sqrt[(1 + 2*l)*l1*(1 + l1)*(1 + 2*l1)*l2*
            (1 + l2)*(1 + 2*l2)]*M*\[Omega]1*\[Omega]2*(\[Omega]1 + 
           \[Omega]2)*JS[{l1, 1}, {l2, -1}, {l, 0}]*JS[{l1, m1}, {l2, m2}, 
           {l, -m}])/(l*(1 + l)*(-2 + l + l^2)^2*Sqrt[Pi]) - 
        ((2*I)*(-1)^m*Sqrt[(1 + 2*l)*l1*(1 + l1)*(1 + 2*l1)*l2*(1 + l2)*
            (1 + 2*l2)]*M*\[Omega]1*\[Omega]2*(\[Omega]1 + \[Omega]2)*
          JS[{l1, 1}, {l2, -1}, {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/
         (l*(1 + l)*(-2 + l + l^2)*Sqrt[Pi]) - 
        ((-1)^m*Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*\[Omega]1*\[Omega]2*
          (l1*(1 + l1)*l2*(1 + l2)*JS[{l1, 0}, {l2, 0}, {l, 0}] + 
           (Sqrt[l1^3*(1 + l1)*l2*(1 + l2)] + Sqrt[l1^5*(1 + l1)*l2*(1 + 
                l2)] + Sqrt[l1*(1 + l1)*l2^3*(1 + l2)] + 
             Sqrt[l1*(1 + l1)*l2^5*(1 + l2)])*JS[{l1, 1}, {l2, -1}, {l, 0}])*
          JS[{l1, m1}, {l2, m2}, {l, -m}])/(2*(-1 + l)*l*(1 + l)*(2 + l)*
          Sqrt[Pi]))}, 0, 1, 1]
 
htrAB = SeriesData[r, Infinity, {I*NUMERIC*(\[Omega]1 + \[Omega]2) + 
       ((-1)^m*Sqrt[(1 + 2*l)*l1*(1 + l1)*(1 + 2*l1)*l2*(1 + l2)*(1 + 2*l2)]*
         \[Omega]1*\[Omega]2*JS[{l1, 1}, {l2, -1}, {l, 0}]*
         JS[{l1, m1}, {l2, m2}, {l, -m}])/(l*(1 + l)*(-2 + l + l^2)*
         Sqrt[Pi]) + ((-1)^m*Sqrt[(1 + 2*l)*l1*(1 + 3*l1 + 2*l1^2)*l2*
           (1 + 3*l2 + 2*l2^2)]*\[Omega]1*\[Omega]2*JS[{l1, 1}, {l2, -1}, 
          {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/(2*(-2 + l + l^2)*
         Sqrt[Pi]) + ((2*I)*(-1)^m*Sqrt[(1 + 2*l)*l1*(1 + l1)*(1 + 2*l1)*l2*
           (1 + l2)*(1 + 2*l2)]*M*\[Omega]1^2*\[Omega]2*JS[{l1, 1}, {l2, -1}, 
          {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/(l*(1 + l)*(-2 + l + l^2)*
         Sqrt[Pi]) + ((2*I)*(-1)^m*Sqrt[(1 + 2*l)*l1*(1 + l1)*(1 + 2*l1)*l2*
           (1 + l2)*(1 + 2*l2)]*M*\[Omega]1*\[Omega]2^2*JS[{l1, 1}, {l2, -1}, 
          {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/(l*(1 + l)*(-2 + l + l^2)*
         Sqrt[Pi]) + ((6*I)*(-1)^m*Sqrt[(1 + 2*l)*l1*(1 + l1)*(1 + 2*l1)*l2*
           (1 + l2)*(1 + 2*l2)]*M*\[Omega]1*\[Omega]2*(\[Omega]1 + \[Omega]2)*
         JS[{l1, 1}, {l2, -1}, {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/
        (l*(1 + l)*(-2 + l + l^2)^2*Sqrt[Pi]) - 
       ((2*I)*(-1)^m*Sqrt[(1 + 2*l)*l1*(1 + l1)*(1 + 2*l1)*l2*(1 + l2)*
           (1 + 2*l2)]*M*\[Omega]1*\[Omega]2*(\[Omega]1 + \[Omega]2)*
         JS[{l1, 1}, {l2, -1}, {l, 0}]*JS[{l1, m1}, {l2, m2}, {l, -m}])/
        (l*(1 + l)*(-2 + l + l^2)*Sqrt[Pi]) - 
       ((-1)^m*Sqrt[(1 + 2*l)*(1 + 2*l1)*(1 + 2*l2)]*\[Omega]1*\[Omega]2*
         (l1*(1 + l1)*l2*(1 + l2)*JS[{l1, 0}, {l2, 0}, {l, 0}] + 
          (Sqrt[l1^3*(1 + l1)*l2*(1 + l2)] + Sqrt[l1^5*(1 + l1)*l2*
              (1 + l2)] + Sqrt[l1*(1 + l1)*l2^3*(1 + l2)] + 
            Sqrt[l1*(1 + l1)*l2^5*(1 + l2)])*JS[{l1, 1}, {l2, -1}, {l, 0}])*
         JS[{l1, m1}, {l2, m2}, {l, -m}])/(2*(-1 + l)*l*(1 + l)*(2 + l)*
         Sqrt[Pi])}, 0, 1, 1]
