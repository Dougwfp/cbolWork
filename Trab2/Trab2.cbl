      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
        PROGRAM-ID. TRAB1.

        ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
        SOURCE-COMPUTER. IBM-PC-PENTIUM-III.
        OBJECT-COMPUTER. IBM-PC-PENTIUM-III.
        SPECIAL-NAMES.
        DECIMAL-POINT IS COMMA.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        77 wsHoras PIC 9(05) VALUE ZERO.
        77 wsValorHora PIC 9(05) VALUE ZERO.
        77 wsQtdDependente PIC 9(05) VALUE ZERO.
        77 wsQReferencia PIC 9(05) VALUE ZERO.
        77 wstemp PIC 9(5)V99.
        77 WKdescDepe PIC 9(5)V99.

        01 wsnome PIC X(20) VALUE SPACES.
        01 wssobrenome PIC X(30) VALUE SPACES.
        01 wspronturario PIC X(08) VALUE SPACES.
        77 wsSalBruto PIC 9(05) VALUE ZERO.
        77 wsSalLiquid PIC 9(05) VALUE ZERO.
        77 wsDiscINSS PIC 9(05) VALUE ZERO.
        77 wsDiscIR PIC 9(05) VALUE ZERO.
        77 wsSalBrutoV PIC ZZZZ9,99.
        77 wsSalLiquidV PIC ZZZZ9,99.
        77 wsDiscINSSV PIC ZZ9,99.
        77 wsDiscIRV PIC ZZ9,99.
        PROCEDURE DIVISION.
        DISPLAY "Digite o nome:" AT 0305 WITH FOREGROUND-COLOR 01.
        ACCEPT wsnome AT 0340 with highlight size is 20.
        DISPLAY "Digite o sobrenome: " AT 0405 WITH FOREGROUND-COLOR 01.
        ACCEPT wssobrenome AT 0440 with highlight size is 30.
        DISPLAY "Digite o prontuario: " AT 0505 WITH FOREGROUND-COLOR 02.
        ACCEPT wspronturario AT 0540 with highlight prompt.
        DISPLAY "Digite horas trabalhadas: " AT 0605 WITH
        FOREGROUND-COLOR 03.
        ACCEPT wsHoras AT 0640 with highlight prompt.
        DISPLAY "Digite valorHora: " AT 0705 WITH FOREGROUND-COLOR 03.
        ACCEPT wsValorHora AT 0740 with highlight prompt.
        DISPLAY "Digite a quantidade de dependentes: " AT 0805 WITH
        FOREGROUND-COLOR 04.
        ACCEPT wsQtdDependente AT 0840 with highlight PROMPT.

        COMPUTE wsSalBruto = wsHoras * wsValorHora.
        COMPUTE wsDiscINSS = wsSalBruto * 0,14.
        COMPUTE wsQReferencia = wsDiscINSS - wsHoras.
        COMPUTE wstemp = 0,275 * wsQReferencia.
        COMPUTE wstemp = wstemp - 869,36.
        COMPUTE WKdescDepe = wsQtdDependente * 189,59.
        COMPUTE wsDiscIR = wstemp + WKdescDepe.
        COMPUTE wsSalLiquid =  wsQReferencia - wsDiscIR.

        MOVE wsSalBruto TO wsSalBrutoV.
        MOVE wsDiscINSS TO wsDiscINSSV.
        MOVE wsDiscIR TO wsDiscIRV.
        MOVE wsSalLiquid TO wsSalLiquidV.

        DISPLAY "SALARIO BRUTO: " AT 1005 wsSalBrutoV WITH
        FOREGROUND-COLOR 05.
        DISPLAY "INSS:" AT 1105 wsDiscINSSV WITH
        FOREGROUND-COLOR 05.
        DISPLAY "IRRF:" AT 1205 wsDiscIRV WITH
        FOREGROUND-COLOR 05.
        DISPLAY "SALARIO LIQUIDO: " AT 1305 wsSalLiquidV WITH
        FOREGROUND-COLOR 05.
        DISPLAY "PRONTUARIO: " AT 1405 wspronturario WITH
        FOREGROUND-COLOR 06.
        DISPLAY " " AT 1505.
        STOP "  Pressione qualquer tecla para terminar...".
        STOP RUN.
