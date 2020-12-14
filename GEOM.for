      SUBROUTINE OF_DUTY(UNIT)
      INTEGER TEMP, UNIT
14    PRINT*,'SELECT FIGURE:'
      PRINT*,'0 - rectangular parallelepiped'
      PRINT*,'1 - triangular pyramid'
      PRINT*,'2 - obelisk'
      PRINT*,'3 - wedge'
      PRINT*,'4 - circular straight cylinder'
      PRINT*,'5 - truncated circular cylinder'
      PRINT*,'6 - segment of the cylinder'
      PRINT*,'7 - cylindrical pipe'
      PRINT*,'8 - circular straight cone'
      PRINT*,'9 - truncated straight cone'
      PRINT*,'10 - sphere'
      PRINT*,'11 - spherical sector'
      PRINT*,'12 - spherical segment'
      PRINT*,'13 - ball layer'
      PRINT*,'14 - fertilizer'
      PRINT*,'15 - ball barrel'
      PRINT*,'16 - parabolic barrel'
      PRINT*,'17 - EXIT'
      READ*,TEMP
      IF ((TEMP.LE.17).AND.(TEMP.GE.0)) THEN
        CALL SET_FIGURE(TEMP, UNIT)
      ELSE
        PRINT*,'PLEASE ENTER A CORRECT DATA'
        GOTO 14
      ENDIF
      END
      
      SUBROUTINE SET_FIGURE(INDEX, UNIT)
      INTEGER INDEX, UNIT
      CHARACTER*2 GET_UNIT
      IF (INDEX.EQ.0) THEN
        CALL PARALLEL_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.1) THEN
        CALL PYRAMID_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.2) THEN
        CALL OBELISK_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.3) THEN
        CALL WEDGE_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.4) THEN
        CALL CSCYLINDER_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.5) THEN
        CALL TCCYLINDER_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.6) THEN
        CALL CYLINDER_SEGMENT_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.7) THEN
        CALL PIPE_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.8) THEN
        CALL CSCONE_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.9) THEN
        CALL TSCONE_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.10) THEN
        CALL SPHERE_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.11) THEN
        CALL SPHERE_SECTOR_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.12) THEN
        CALL SPHERE_SEGMENT_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.13) THEN
        CALL SPHERE_LAYER_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.14) THEN
        CALL FERTILIZER_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.15) THEN
        CALL BALL_BARREL_INPUT(GET_UNIT(UNIT))
      ELSE IF (INDEX.EQ.16) THEN 
        CALL PARABOLIC_BARREL_INPUT(GET_UNIT(UNIT))
      ENDIF
      IF (INDEX.NE.17) THEN
       CALL PRINT_UNIT(UNIT,3)
      ENDIF
      END
