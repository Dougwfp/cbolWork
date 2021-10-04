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
        SCREEN SECTION.
         01 TELA1.
           10 BLANK SCREEN.
           10 LINE 05 COLUMN 20 VALUE "Digite o nome:"
           FOREGROUND-COLOR 01.
           10 TELA1-VAL1 LINE 05 COLUMN PLUS 50
           USING wsnome.
           10 LINE 06 COLUMN 20 VALUE "Digite o sobrenome:"
           FOREGROUND-COLOR 02.
           10 TELA1-VAL2 LINE 06 COLUMN PLUS 50
           USING wssobrenome.
           10 LINE 07 COLUMN 20 VALUE "Digite o prontuario:"
           FOREGROUND-COLOR 03.
           10 TELA1-VAL3 LINE 07 COLUMN PLUS 50
           USING wspronturario.
           10 LINE 08 COLUMN 20 VALUE "Digite horas trabalhadas:"
           FOREGROUND-COLOR 04.
           10 TELA1-VAL4 LINE 08 COLUMN PLUS 50
           USING wsHoras.
           10 LINE 09 COLUMN 20 VALUE "Digite valorHora:"
           FOREGROUND-COLOR 04.
           10 TELA1-VAL5 LINE 09 COLUMN PLUS 50 PIC ZZ9,99
           USING wsValorHora.
           10 LINE 10 COLUMN 20
           VALUE "Digite a quantidade de dependentes:"
           FOREGROUND-COLOR 04.
           10 TELA1-VAL6 LINE 10 COLUMN PLUS 50
           USING wsQtdDependente.
         01 TELA2.
           10 BLANK SCREEN.
           10 LINE 05 COLUMN 20 VALUE "SALARIO BRUTO:"
           FOREGROUND-COLOR 02.
           10 LINE 05 COLUMN PLUS 50 USING wsSalBrutoV PIC Z.ZZ9,99.
           10 LINE 06 COLUMN PLUS 50 VALUE "INSS:"
           FOREGROUND-COLOR 02.
           10 LINE 06 COLUMN PLUS 50 USING wsDiscINSSV PIC ZZ9,99.
           10 LINE 07 COLUMN 20 VALUE "IRRF:"
           FOREGROUND-COLOR 02.
           10 LINE 07 COLUMN PLUS 50 USING wsDiscIRV PIC ZZ9,99.
           10 LINE 08 COLUMN PLUS 50 VALUE "SALARIO LIQUIDO:"
           FOREGROUND-COLOR 02.
           10 LINE 08 COLUMN PLUS 50 USING wsSalLiquidV PIC Z.ZZ9,99.
           10 LINE 09 COLUMN PLUS 50 VALUE "PRONTUARIO:"
           FOREGROUND-COLOR 02.
           10 LINE 09 COLUMN PLUS 50 USING wspronturario.

           PROCEDURE DIVISION.

        DISPLAY TELA1.
        ACCEPT TELA1-VAL1.
        ACCEPT TELA1-VAL2.
        ACCEPT TELA1-VAL3.
        ACCEPT TELA1-VAL4.
        ACCEPT TELA1-VAL5.
        ACCEPT TELA1-VAL6.

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

        DISPLAY TELA2.

        STOP RUN.
