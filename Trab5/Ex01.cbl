*>****************************************************************
*> Author:
*> Date:
*> Purpose:
*> Tectonics: cobc
*>****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. YOUR-PROGRAM-NAME.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
77 X PIC 99999.
77 Y PIC 99999.
PROCEDURE DIVISION.
MAIN-PROCEDURE.
    PERFORM VARYING X FROM 1 BY 1
     UNTIL X > 3
     DISPLAY X ' ' WITH NO ADVANCING
     PERFORM VARYING Y FROM 1 BY 1
      UNTIL Y > 5
      DISPLAY Y ' ' WITH NO ADVANCING
     END-PERFORM
     DISPLAY ' '
    END-PERFORM.
END PROGRAM YOUR-PROGRAM-NAME.
