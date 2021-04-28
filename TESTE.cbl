      ******************************************************************
      * Author: CHRISTIAN LOPES DE OLIVEIRA
      * Date:28/04/2021
      * Purpose: FAZER SOMA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           77 NUMERO                       PIC 9(002) VALUE 12.
           77 NUMERO-DOIS                  PIC 9(002) VALUE 4.
      ******************************************************************
           01 RESULTADO                    PIC 9(003) VALUE 0.
           01 RESULTADO-DOIS               PIC 9(005) VALUE 0.
       PROCEDURE DIVISION.
      *MAIN-PROCEDURE.
      ******************************************************************
      ************** SOMA  COM COMPUTE E ADD ***************************
      ******************************************************************
               PERFORM 001-PROCESSAMENTO THRU 001-SAI.
               PERFORM 002-IMPRIMIR-SOMA THRU 002-SAI.
                   STOP RUN.
           001-PROCESSAMENTO.
               COMPUTE RESULTADO = NUMERO + NUMERO-DOIS.
               ADD NUMERO TO NUMERO-DOIS GIVING RESULTADO-DOIS.
               ADD NUMERO TO NUMERO-DOIS.
           001-SAI.
               EXIT.
           002-IMPRIMIR-SOMA.
               DISPLAY "RESULTADO COMPUTE 001: " NUMERO.
               DISPLAY "RESULTADO ADD COM GINVING 002: " RESULTADO-DOIS.
               DISPLAY "RESULTADO ADD SEM GINVING 003: " NUMERO-DOIS.
               DISPLAY RESULTADO.
           002-SAI.
               EXIT.

       END PROGRAM YOUR-PROGRAM-NAME.
