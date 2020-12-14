      PROGRAM UI
      INTEGER SMI,MMI,UNIT,START_MENU,MAIN_MENU,UNIT_MENU
      UNIT=0
1     SMI=START_MENU()   
      IF (SMI.EQ.0) THEN
        STOP 0
      ELSE
11      MMI=MAIN_MENU()
        IF (MMI.EQ.0) THEN
            GOTO 1
        ELSE IF (MMI.EQ.1) THEN
            PRINT '(A,\)','CURRENT UNIT IS: '
            CALL PRINT_UNIT(UNIT,1)
            UNIT=UNIT_MENU()
            PRINT '(A,\)','YOU HAVE CHOOSED: '
            CALL PRINT_UNIT(UNIT,1)
            GOTO 11
        ELSE
            CALL OF_DUTY(UNIT)
            GOTO 11
        ENDIF          
      ENDIF
      PAUSE 'ENTER KEY TO EXIT...'
      END
      
      SUBROUTINE PRINT_UNIT(UNIT, POWER)
      INTEGER UNIT, POWER
      IF (UNIT.EQ.0) THEN
        PRINT 12,' M'
      ELSE IF (UNIT.EQ.1) THEN
        PRINT 12,' SM'
      ELSE
        PRINT 12,' MM'
      ENDIF
      IF (POWER.EQ.1) THEN
        PRINT *, ' '
      ELSE
        PRINT '(A,I1)', '^', POWER
      ENDIF
12    FORMAT (A,1X,$) 
      END
      
      CHARACTER*2 FUNCTION GET_UNIT(UNIT)
      INTEGER UNIT
      IF (UNIT.EQ.0) THEN
        GET_UNIT='M'
        RETURN
      ELSE IF (UNIT.EQ.1) THEN
        GET_UNIT='SM'
        RETURN
      ENDIF
      GET_UNIT='MM'
      END
      
      INTEGER FUNCTION START_MENU()
      INTEGER TEMP
      PRINT*,'START MENU'
2     PRINT*,'0 - EXIT'
      PRINT*,'1 - CALCULATE'
      READ '(I1)', TEMP 
      IF ((TEMP.EQ.0).OR.(TEMP.EQ.1)) THEN
        START_MENU=TEMP
      ELSE
        PRINT*,'PLEASE ENTER CORRECT DATA'
        GOTO 2
      ENDIF
      END
      
      INTEGER FUNCTION MAIN_MENU()
      INTEGER TEMP
      PRINT*,'MAIN MENU'
3     PRINT*,'0 - GO TO START MENU'
      PRINT*,'1 - SET UNITS'
      PRINT*,'2 - GO TO COMPUTING'
      READ '(I1)', TEMP 
      IF ((TEMP.LE.2).AND.(TEMP.GE.0)) THEN
        MAIN_MENU=TEMP
      ELSE
        PRINT*,'PLEASE ENTER CORRECT DATA'
        GOTO 3
      ENDIF
      END
      
      INTEGER FUNCTION UNIT_MENU()
      INTEGER TEMP
      PRINT*,'SET UNITS MENU'
4     PRINT*,'0 - METERS'
      PRINT*,'1 - SANTIMETERS'
      PRINT*,'2 - MILLIMETERS'
      READ '(I1)', TEMP 
      IF ((TEMP.LE.2).AND.(TEMP.GE.0)) THEN
        UNIT_MENU=TEMP
      ELSE
        PRINT*,'PLEASE ENTER CORRECT DATA'
        GOTO 4
      ENDIF
      END
      
