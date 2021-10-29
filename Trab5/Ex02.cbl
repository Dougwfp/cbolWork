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
77 wsinicio PIC 99999.
77 wsfim PIC 99999.
77 wsincrem PIC S99999.
PROCEDURE DIVISION.
    INICIAL.
    DISPLAY "Digite o numero inicial: " NO ADVANCING.
    ACCEPT wsinicio.
    DISPLAY "Digite o numero final: " NO ADVANCING.
    ACCEPT wsfim.
    DISPLAY "Digite o incremento/decremento: " NO ADVANCING.
    ACCEPT wsincrem.
    IF wsinicio < wsfim
        PERFORM CRESCENTE
    ELSE
        IF wsinicio > wsfim
            PERFORM DECRESCENTE
        ELSE
            PERFORM ERRO
        END-IF
    END-IF.

    CRESCENTE.
    PERFORM VARYING X FROM wsinicio BY wsincrem
     UNTIL X > wsfim
     DISPLAY X
    END-PERFORM.
    STOP RUN.

    DECRESCENTE.
    COMPUTE wsincrem = wsincrem * -1
    PERFORM VARYING X FROM wsinicio BY wsincrem
     UNTIL X < wsfim
     DISPLAY X
    END-PERFORM.
    STOP RUN.

    ERRO.
    DISPLAY 'ERRO'.
    STOP RUN.

END PROGRAM YOUR-PROGRAM-NAME.
