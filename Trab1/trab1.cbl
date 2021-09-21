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
        77 wsSalBruto PIC 9(05) VALUE ZERO.
        77 wsSalLiquid PIC 9(05) VALUE ZERO.
        77 wsQReferencia PIC 9(05) VALUE ZERO.
        77 wstemp PIC 9(5)V99.
        77 WKdescDepe PIC 9(5)V99.
        77 wsDiscINSS PIC 9(05) VALUE ZERO.
        77 wsDiscIR PIC 9(05) VALUE ZERO.
        01 wsnome PIC X(20) VALUE SPACES.
        01 wssobrenome PIC X(30) VALUE SPACES.
        01 wspronturario PIC X(08) VALUE SPACES.
        PROCEDURE DIVISION.
        DISPLAY "Digite o nome:" AT 0305.
        ACCEPT wsnome AT 0330.
        DISPLAY "Digite o sobrenome: " AT 0405.
        ACCEPT wssobrenome AT 0430.
        DISPLAY "Digite o prontuario: " AT 0505.
        ACCEPT wspronturario AT 0530.
        DISPLAY "Digite horas trabalhadas: " AT 0605.
        ACCEPT wsHoras AT 0630.
        DISPLAY "Digite valorHora: " AT 0705.
        ACCEPT wsValorHora AT 0730.
        DISPLAY "Digite a quantidade de dependentes: " AT 0805.
        ACCEPT wsQtdDependente AT 0880.

        MULTIPLY wsHoras BY wsValorHora GIVING wsSalBruto.
        MULTIPLY wsSalBruto BY 0,14 GIVING wsDiscINSS.
        SUBTRACT wsDiscINSS FROM wsHoras GIVING wsQReferencia.
        MULTIPLY 0,275 BY wsQReferencia GIVING wstemp.
        SUBTRACT 869,36 FROM wstemp.
        MULTIPLY wsQtdDependente BY 189,59 GIVING WKdescDepe.
        ADD wstemp WKdescDepe GIVING wsDiscIR.
        SUBTRACT wsDiscIR FROM wsQReferencia GIVING wsSalLiquid.

        DISPLAY "SALARIO BRUTO: " AT 1005 wsSalBruto.
        DISPLAY "INSS:" AT 1105 wsDiscINSS.
        DISPLAY "IRRF:" AT 1205 wsDiscIR.
        DISPLAY "SALARIO LIQUIDO: " AT 1305 wsSalLiquid.
        DISPLAY wspronturario AT 1501.
        DISPLAY " " AT 2205.
        STOP "Pressione qualquer tecla para terminar...".
        STOP RUN.
