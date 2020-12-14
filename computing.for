      REAL FUNCTION PARALLEL(A,B,C)
      REAL A,B,C
      PARALLEL=A*B*C
      END
      
      REAL FUNCTION PYRAMID(A,B,C,D,E,F)
      REAL A,B,C,D,E,F,RESULT
      A=A**2
      B=B**2
      C=C**2
      D=D**2
      E=E**2
      F=F**2
      RESULT=-A*(2*A*F-D*(-B+F+C)+E*(-B+C-F)-F*(B+C-F))
      RESULT=RESULT+B*(A*(-D+F+E)+E*(-B+D+C-E)-(B*E-D*C+F*(C-E)))
      RESULT=RESULT-C*(A*(-D+E-F)+D*(-B+D+C-E)-(B*(E-F)-D*(C-F)))
      RESULT=RESULT+A*F*(D+E-F)+D*(B*E-D*C+F*(C-E))
      RESULT=RESULT-E*(B*(E-F)-D*(C-F))
      PYRAMID=SQRT(RESULT/288)
      END
      
      REAL FUNCTION OBELISK(H,A,A1,B,B1)
      REAL A,B,A1,B1,H
      OBELISK=H*((2*A+A1)*B+(2*A1+A)*B1)/6
      END
      
      REAL FUNCTION WEDGE(A,A1,B,H)
      REAL A,B,A1,H
      WEDGE=(2*A+A1)*B*H/6
      END
      
      REAL FUNCTION CSCYLINDER(R,H)
      REAL R,H,PI
      PARAMETER (PI=3.14159)
      CSCYLINDER=PI*R*R*H
      END
      
      REAL FUNCTION TCCYLINDER(R,H1,H2)
      REAL R,H1,H2,PI
      PARAMETER (PI=3.14159)
      TCCYLINDER=PI*R*R*(H1+H2)/2
      END
      
      REAL FUNCTION CYLINDER_SEGMENT(H,A,R,B,PHI)
      REAL H,A,R,B,PHI
      CYLINDER_SEGMENT=H*(A*(3*R*R-A*A)+3*R*R*(B-R)*PHI)/(3*B)
      END
      
      REAL FUNCTION PIPE(H,R1,R2)
      REAL R1,R2,H,PI
      PARAMETER (PI=3.14159)
      PIPE=PI*H*(R1**2 - R2**2)
      END
      
      REAL FUNCTION CSCONE(R,H)
      REAL R,H,PI
      PARAMETER (PI=3.14159)
      CSCONE=PI*R*R*H/3
      END
      
      REAL FUNCTION TSCONE(H,R1,R2)
      REAL R1,R2,H,PI
      PARAMETER (PI=3.14159)
      TSCONE=PI*H*(R1**2 + R2**2 + R1*R2)/3
      END
      
      REAL FUNCTION SPHERE(R)
      REAL R,PI
      PARAMETER (PI=3.14159)
      SPHERE=4*PI*(R**3)/3
      END
      
      REAL FUNCTION SPHERE_SECTOR(R,H)
      REAL R,H,PI
      PARAMETER (PI=3.14159)
      SPHERE_SECTOR=2*PI*R*R*H/3
      END     
      
      REAL FUNCTION SPHERE_SEGMENT(H,A)
      REAL A,H,PI
      PARAMETER (PI=3.14159)
      SPHERE_SEGMENT=PI*H*(3*A*A + H*H)/6
      END 
      
      REAL FUNCTION SPHERE_LAYER(H,A,B)
      REAL A,H,B,PI
      PARAMETER (PI=3.14159)
      SPHERE_LAYER=PI*H*(3*A*A + 3*B*B + H*H)/6
      END 
      
      REAL FUNCTION FERTILIZER(R1,R2)
      REAL R1,R2,PI
      PARAMETER (PI=3.14159)
      FERTILIZER=2*PI*PI*R1*R2*R2
      END 
      
      REAL FUNCTION BALL_BARREL(H,D1,D2)
      REAL H,D1,D2
      BALL_BARREL=0.262*H*(2*D1*D1 + D2*D2)
      END 
      
      REAL FUNCTION PARA_BARREL(H,D1,D2)
      REAL H,D1,D2,PI
      PARAMETER (PI=3.14159)
      PARA_BARREL=PI*H*(8*D1*D1+4*D1*D2+3*D2*D2)/60
      END
      
      
