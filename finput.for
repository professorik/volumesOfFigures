C     MAKE PARAMETER AS LIST     
      LOGICAL FUNCTION IS_CORRECT_DATA(A,B,C,D,E,F)
      REAL A,B,C,D,E,F
      IF (MIN(A,B,C,D,E,F).LE.0) THEN
        IS_CORRECT_DATA = .FALSE.
        PRINT*, 'INCORRECT DATA'
        RETURN 
      ENDIF
      IS_CORRECT_DATA = .TRUE.
      END
      
      SUBROUTINE PARALLEL_INPUT(UNIT)
      REAL A,B,C
      CHARACTER UNIT*2
3     PRINT*,'Please input a,b,c > 0: '
      PRINT 2, 'a',UNIT
      READ 1, A
      PRINT 2, 'b',UNIT
      READ 1,B
      PRINT 2, 'c',UNIT
      READ 1,C
      IF (IS_CORRECT_DATA(A,B,C,A,A,A)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',PARALLEL(A,B,C)
      ELSE
        GOTO 3
      ENDIF
1     FORMAT (F6.2,\)
2     FORMAT (A,'(',A2,')=',$)
      END
      
      SUBROUTINE PYRAMID_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL A,B,C,D,E,F
3     PRINT*,'Please input r, q, a, p, b, c: '
      PRINT 2, 'r',UNIT
      READ 1,A
      PRINT 2, 'q',UNIT
      READ 1,B
      PRINT 2, 'a',UNIT
      READ 1,C
      PRINT 2, 'p',UNIT
      READ 1,D
      PRINT 2, 'b',UNIT
      READ 1,E
      PRINT 2, 'c',UNIT
      READ 1,F
      IF (IS_CORRECT_DATA(A,B,C,D,E,F)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',PYRAMID(A,B,C,D,E,F)
      ELSE
        GOTO 3
      ENDIF  
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END
      
      SUBROUTINE OBELISK_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL A,B,A1,B1,H
3     PRINT*,'Please input a, a1, b, b1, h: '
      PRINT 2, 'a',UNIT
      READ 1,A
      PRINT 2, 'a1',UNIT
      READ 1,A1
      PRINT 2, 'b',UNIT
      READ 1,B
      PRINT 2, 'b1',UNIT
      READ 1,B1
      PRINT 2, 'h',UNIT
      READ 1,H
      IF (IS_CORRECT_DATA(A,B,A1,B1,H,A)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',OBELISK(H,A,A1,B,B1)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END
      
      SUBROUTINE WEDGE_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL A,B,A1,H
3     PRINT*,'Please input a, a1, b, h: '
      PRINT 2, 'a',UNIT
      READ 1,A
      PRINT 2, 'a1',UNIT
      READ 1,A1
      PRINT 2, 'b',UNIT
      READ 1,B
      PRINT 2, 'h',UNIT
      READ 1,H
      IF (IS_CORRECT_DATA(A,B,A1,H,A,A)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',WEDGE(A,A1,B,H)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END
      
      SUBROUTINE CSCYLINDER_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL R,H
3     PRINT*,'Please input R, h: '
      PRINT 2, 'R',UNIT
      READ 1,R
      PRINT 2, 'h',UNIT
      READ 1,H
      IF (IS_CORRECT_DATA(R,H,H,H,H,H)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',CSCYLINDER(R,H)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END
      
      SUBROUTINE TCCYLINDER_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL R,H1,H2
3     PRINT*,'Please input R, h1, h2: '
      PRINT 2, 'R',UNIT
      READ 1,R
      PRINT 2, 'h1',UNIT
      READ 1,H1
      PRINT 2, 'h2',UNIT
      READ 1,H2
      IF (IS_CORRECT_DATA(R,H1,H2,R,R,R)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',TCCYLINDER(R,H1,H2)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END
      
      SUBROUTINE CYLINDER_SEGMENT_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL H,A,R,B,PHI
3     PRINT*,'Please input h, a, R, b, phi (in radians): '
      PRINT 2, 'h',UNIT
      READ 1,H
      PRINT 2, 'a',UNIT
      READ 1,A
      PRINT 2, 'R',UNIT
      READ 1,R
      PRINT 2, 'b',UNIT
      READ 1,B
      PRINT 2, 'phi',UNIT
      READ 1,PHI
      IF (IS_CORRECT_DATA(H,A,R,B,PHI,A)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',CYLINDER_SEGMENT(H,A,R,B,PHI)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END      
      
      SUBROUTINE PIPE_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL R1,R2,H
3     PRINT*,'Please input h, R, r: '
      PRINT 2, 'h',UNIT
      READ 1,H
      PRINT 2, 'R',UNIT
      READ 1,R1
      PRINT 2, 'r',UNIT
      READ 1,R2
      IF (IS_CORRECT_DATA(R1,R2,H,H,H,H)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',PIPE(H,R1,R2)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END
      
      SUBROUTINE CSCONE_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL R,H
3     PRINT*,'Please input R, h: '
      PRINT 2, 'R',UNIT
      READ 1,R
      PRINT 2, 'h',UNIT
      READ 1,H
      IF (IS_CORRECT_DATA(R,H,H,H,H,H)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',CSCONE(R,H)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END
      
      SUBROUTINE TSCONE_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL R1,R2,H
3     PRINT*,'Please input h, R, r: '
      PRINT 2, 'h',UNIT
      READ 1,H
      PRINT 2, 'R',UNIT
      READ 1,R1
      PRINT 2, 'r',UNIT
      READ 1,R2
      IF (IS_CORRECT_DATA(R1,R2,H,H,H,H)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',TSCONE(H,R1,R2)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END
      
      SUBROUTINE SPHERE_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL R
3     PRINT*,'Please input R: '
      PRINT 2, 'R',UNIT
      READ 1,R
      IF (IS_CORRECT_DATA(R,R,R,R,R,R)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',SPHERE(R)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END
      
      SUBROUTINE SPHERE_SECTOR_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL R,H
3     PRINT*,'Please input R, h: '
      PRINT 2, 'R',UNIT
      READ 1,R
      PRINT 2, 'h',UNIT
      READ 1,H
      IF (IS_CORRECT_DATA(R,H,H,H,H,H)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',SPHERE_SECTOR(R,H)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END     
      
      SUBROUTINE SPHERE_SEGMENT_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL A,H
3     PRINT*,'Please input h, a: '
      PRINT 2, 'h',UNIT
      READ 1,H
      PRINT 2, 'a',UNIT
      READ 1,A
      IF (IS_CORRECT_DATA(A,H,A,A,A,A)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',SPHERE_SEGMENT(H,A)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END 
      
      SUBROUTINE SPHERE_LAYER_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL A,H,B
3     PRINT*,'Please input h, a, b: '
      PRINT 2, 'h',UNIT
      READ 1,H
      PRINT 2, 'a',UNIT
      READ 1,A
      PRINT 2, 'b',UNIT
      READ 1,B
      IF (IS_CORRECT_DATA(A,H,B,A,A,A)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',SPHERE_LAYER(H,A,B)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END 
      
      SUBROUTINE FERTILIZER_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL R1,R2
3     PRINT*,'Please input R, r: '
      PRINT 2, 'R',UNIT
      READ 1,R1
      PRINT 2, 'r',UNIT
      READ 1,R2
      IF (IS_CORRECT_DATA(R1,R2,R1,R1,R1,R1)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',FERTILIZER(R1,R2)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END 
      
      SUBROUTINE BALL_BARREL_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL H,D1,D2
3     PRINT*,'Please input h, D, d: '
      PRINT 2, 'h',UNIT
      READ 1,H
      PRINT 2, 'D',UNIT
      READ 1,D1
      PRINT 2, 'd',UNIT
      READ 1,D2
      IF (IS_CORRECT_DATA(H,D1,D2,H,H,H)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',BALL_BARREL(H,D1,D2)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END 
      
      SUBROUTINE PARABOLIC_BARREL_INPUT(UNIT)
      CHARACTER UNIT*2
      REAL H,D1,D2
3     PRINT*,'Please input h, D, d: '
      PRINT 2, 'h',UNIT
      READ 1,H
      PRINT 2, 'D',UNIT
      READ 1,D1
      PRINT 2, 'd',UNIT
      READ 1,D2
      IF (IS_CORRECT_DATA(H,D1,D2,H,H,H)) THEN
        PRINT '(A,E15.8,\)','RESULT: ',PARA_BARREL(H,D1,D2)
      ELSE
        GOTO 3
      ENDIF 
1     FORMAT (F6.2)
2     FORMAT (A,'(',A2,')=',$)
      END
      
      
