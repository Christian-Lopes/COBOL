      ******************************************************************
      * Author: CHRISTIAN LOPES DE OLIVEIRA
      * Date:28/04/2022
      * Purpose: SOMA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAM-SOMA.
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
      ************************** SOMA COM COMPUTE **********************
               COMPUTE RESULTADO = NUMERO + NUMERO-DOIS.
      ************************** SOMA  USANDO GIVING *******************
               ADD NUMERO TO NUMERO-DOIS GIVING RESULTADO-DOIS.
      ************************** SOMA USANDO SOMENTE ADD ***************
               ADD NUMERO TO NUMERO-DOIS.
           001-SAI.
               EXIT.
           002-IMPRIMIR-SOMA.
               DISPLAY "RESULTADO 1: COM COMPUTE: " RESULTADO.
               DISPLAY "RESULTADO 2: COM ADD E GINVING: "
                   RESULTADO-DOIS.
               DISPLAY "RESULTADO 3: COM ADD E SEM GINVING 3: "
                   NUMERO-DOIS.
           002-SAI.
               EXIT.
       END PROGRAM PROGRAM-SOMA.
