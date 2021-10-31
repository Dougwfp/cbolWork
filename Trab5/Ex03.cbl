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
        77 wsopcao PIC 99999.
        77 wsvalor PIC S99999.
        77 wsvalor1 PIC S99999.
        77 wsvalor2 PIC S99999.
        PROCEDURE DIVISION.
            INICIAL.
            DISPLAY "1 - Soma ".
            DISPLAY "2 - Subtracao".
            DISPLAY "3 - Multiplicacao".
            DISPLAY "4 - Divisao".
            DISPLAY "0 - Sair".
            DISPLAY "Digite a opcao: " NO ADVANCING.
            ACCEPT wsopcao.

            IF wsopcao > 4
                DISPLAY 'ERRO'
            ELSE
                IF wsopcao = 0
                    STOP RUN
                ELSE
                    PERFORM ENTRADA
                END-IF.

            ENTRADA.
            DISPLAY "Digite o primeiro valor: " NO ADVANCING
            ACCEPT wsvalor1.
            DISPLAY "Digite o segundo valor: " NO ADVANCING
            ACCEPT wsvalor2.

            IF wsopcao = 1
                PERFORM SOMA
            ELSE
                IF wsopcao = 2
                    PERFORM SUBTRACAO
                ELSE
                    IF wsopcao = 3
                        PERFORM MULTIPLICACAO
                    ELSE
                        PERFORM DIVISAO
                    END-IF
                END-IF
            END-IF.
            STOP RUN.

            SOMA.
                COMPUTE wsvalor = wsvalor1 + wsvalor2
                DISPLAY 'A soma dos dois numeros eh igual a: ' wsvalor
                PERFORM INICIAL.

            SUBTRACAO.
                COMPUTE wsvalor = wsvalor1 - wsvalor2
                DISPLAY 'A subtracao dos dois numeros eh igual a: '
                wsvalor
                PERFORM INICIAL.

            MULTIPLICACAO.
                COMPUTE wsvalor = wsvalor1 * wsvalor2
                DISPLAY 'A multiplicacao dos dois numeros eh igual a: '
                wsvalor
                PERFORM INICIAL.

            DIVISAO.
                COMPUTE wsvalor = wsvalor1 / wsvalor2
                DISPLAY 'A divisao dos dois numeros eh igual a: '
                wsvalor
                PERFORM INICIAL.


        END PROGRAM YOUR-PROGRAM-NAME.
