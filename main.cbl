      IDENTIFICATION DIVISION.
      PROGRAM-ID.  COBOLGAME.

      AUTHOR. SNOWMAN64.
      INSTALLATION. SNOWMAN64S-GAMES.
      DATE-WRITTEN. 2026/05/14.

      *> Initialize
      DATA DIVISION.
      WORKING-STORAGE SECTION. *> Variables
              01 INPUT-KEY      PIC X.

      *> Code Processing
      PROCEDURE DIVISION.
           DISPLAY "Hello World!"

           ACCEPT INPUT-KEY.

           GOBACK.
      END PROGRAM COBOLGAME.
