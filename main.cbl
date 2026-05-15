      IDENTIFICATION DIVISION.
      PROGRAM-ID.  COBALTDUNGEON.

      AUTHOR. SNOWMAN64.
      INSTALLATION. SNOWMAN64S-GAMES.
      DATE-WRITTEN. 2026/05/14.

      *> Special Thanks
      *> raylib Core Example: Window Letterbox - anatagawa

      *> Initialize
      DATA DIVISION.
      WORKING-STORAGE SECTION. *> Variables
              *> Window
              01 SCREEN-WIDTH    PIC 9(4)    VALUE 844.
              01 SCREEN-HEIGHT   PIC 9(4)    VALUE 480.
              01 WINDOW-NAME     PIC X(20)   VALUE "The Cobalt Dungeon".

              *> Properties
              01 CLOSED         PIC S9(4)   VALUE 0. *> Window Closed

              01 INPUT-KEY      PIC X.

      *> Code Processing
      PROCEDURE DIVISION.   
           *> Initialize Window
           CALL "SetProperties" *> Set Window Properties
           
           CALL "Initialize" USING BY VALUE SCREEN-WIDTH
                                   BY VALUE SCREEN-HEIGHT
                                   BY REFERENCE WINDOW-NAME
           CALL "CreateTarget"
           
           CALL "SetFPS" USING BY VALUE 60 *> Set FPS

           PERFORM UNTIL CLOSED = 1 *> Run while Window Open
              CALL "Update" *> Update Variables
              
              *> Inside Game Boundaries
              CALL "StartTarget"
                
                 *> Set Background Colour (R,G,B)
                 CALL "Clear" USING BY VALUE 44
                                    BY VALUE 52
                                    BY VALUE 128
                 
                 *> Set Text()
                 CALL "Text" USING BY VALUE "The Cobalt Dungeon is a WIP game! Check back later."
                         BY VALUE 10    *> X
                         BY VALUE 10    *> Y

              CALL "EndTarget"
              
              *> Begin Drawing
              CALL "Draw"
              
                 *> Set Background Colour (Black)
                 CALL "Clear" USING BY VALUE 0
                                    BY VALUE 0
                                    BY VALUE 0
                                    BY VALUE 0
      
                 CALL "DrawTarget" *> Draw Game Boundaries
              
              *> End of Draw
              CALL "End"

              *> Close Game When Window Closed
              CALL "WindowClose" RETURNING CLOSED
           END-PERFORM

           CALL "Unload" *> Unload Assets

           GOBACK.
      END PROGRAM COBALTDUNGEON.
