      ******************************************************************
      * Author: CHRISTIAN LOPES DE OLIVEIRA
      * Date: 29/04/2022
      * Purpose: PRODUTO DA MULTIPLICAÇÃO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-PRODUTO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 ELEMENTOS.
               03 NUMERO-UM                PIC 9(002) VALUE 10.
               03 NUMERO-DOIS              PIC 9(002) VALUE 5.
               03 PRODUTO-UM               PIC 9(002) VALUE ZEROS.
               03 PRODUTO-DOIS             PIC 9(002) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM 001-MULTIPLICAR THRU 001-SAI.
            PERFORM 002-IMPRIMIR THRU 002-SAI.
            STOP RUN.
      ******************************************************************
           001-MULTIPLICAR.
               COMPUTE PRODUTO-UM = NUMERO-UM * NUMERO-DOIS.
               MULTIPLY NUMERO-UM BY NUMERO-DOIS GIVING PRODUTO-DOIS.
           001-SAI.
           002-IMPRIMIR.
               DISPLAY "Multiplicação com COMPUTER: " PRODUTO-UM.
               DISPLAY "Multiplicação com MULTIPLY: " PRODUTO-DOIS.
           002-SAI.
       END PROGRAM YOUR-PROGRAM-PRODUTO.
