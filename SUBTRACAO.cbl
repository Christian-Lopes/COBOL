      ******************************************************************
      * Author: CHRISTIAN LOPES DE OLIVEIRA
      * Date: 28/04/2021
      * Purpose: FAZER SUBTRA플O ENTRE DOIS ELEMENTOS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 ELEMENTOS.
               03 ELEMENTO-UM                    PIC 9(002) VALUE 50.
               03 ELEMENTO-DOIS                  PIC 9(002) VALUE 15.
               03 RESULTADO                      PIC 9(002) VALUE ZEROS.
               03 RESULTADO-DOIS                 PIC 9(002) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM 001-SUBTRACAO THRU 001-SAI.
           PERFORM 002-IMPRIMIR THRU 002-SAI.
           STOP RUN.
           001-SUBTRACAO.
               COMPUTE RESULTADO = ELEMENTO-UM - ELEMENTO-DOIS.
               SUBTRACT ELEMENTO-UM FROM ELEMENTO-DOIS
                        GIVING RESULTADO-DOIS.
               SUBTRACT ELEMENTO-UM FROM ELEMENTO-DOIS.
           001-SAI.
               EXIT.
           002-IMPRIMIR.
               DISPLAY "SUBTRA플O COM O COMPUTE: " RESULTADO.
               DISPLAY "SUBTRA플O COM GIVING: " RESULTADO-DOIS.
               DISPLAY "SUBTRA플O COM O SUBTRACT: " ELEMENTO-DOIS.
           002-SAI.
               EXIT.
       END PROGRAM YOUR-PROGRAM-NAME.
