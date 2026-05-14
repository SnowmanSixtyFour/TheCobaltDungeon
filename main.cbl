      IDENTIFICATION DIVISION.
      PROGRAM-ID.  COBOLGAME.

      AUTHOR. SNOWMAN64.
      INSTALLATION. SNOWMAN64S-GAMES.
      DATE-WRITTEN. 2026/05/14.

      *> Initialize
      DATA DIVISION.
      WORKING-STORAGE SECTION. *> Variables
              *> Window
              01 SCREENWIDTH    PIC 9(4)    VALUE 844.
              01 SCREENHEIGHT   PIC 9(4)    VALUE 480.
              01 WINDOWNAME     PIC X(20)   VALUE "COBOL Game".

              *> Properties
              01 CLOSED         PIC S9(4)   VALUE 0. *> Window Closed

              01 INPUT-KEY      PIC X.

      *> Code Processing
      PROCEDURE DIVISION.
		   CALL "AllowResizing" *> Allow Window Resizing
		   
		   *> Initialize Window
           CALL "Initialize" USING BY VALUE SCREENWIDTH
                                   BY VALUE SCREENHEIGHT
                                   BY REFERENCE WINDOWNAME

           PERFORM UNTIL CLOSED = 1 *> Run while Window Open
              CALL "Draw" *> Begin Drawing
              
              *> Set Background Colour (R,G,B,A)
              CALL "Clear" USING BY VALUE 128
                                 BY VALUE 128
                                 BY VALUE 128
                                 BY VALUE 128
              
              CALL "Text" USING BY VALUE "Hello, world!"
                                BY VALUE 10    *> X
                                BY VALUE 10    *> Y
                                BY VALUE 20    *> Size

                        *> Text Colour (R,G,B,A)
                                BY VALUE 255
                                BY VALUE 255
                                BY VALUE 255
                                BY VALUE 255

              CALL "End" *> End of Draw

              *> Close Game When Window Closed
              CALL "WindowClose" RETURNING CLOSED
           END-PERFORM

           GOBACK.
      END PROGRAM COBOLGAME.
