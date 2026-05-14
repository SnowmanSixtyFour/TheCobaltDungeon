# COBOL Game
<a href="https://www.gnu.org/licenses/gpl-3.0.en.html">
  <img src="https://img.shields.io/badge/License-GPLv3-blue.svg" width="100" alt="GNU General Public License v3.0">
</a>

### A game made with [GnuCOBOL](https://gnucobol.sourceforge.io/) and [raylib](https://www.raylib.com/).

COBOL Game is an upcoming game. More to be added later.

## Installation
To compile COBOL Game, you must first install [GnuCOBOL](https://gnucobol.sourceforge.io/).

The documentation for installing GnuCOBOL can be found in its [README](https://sourceforge.net/projects/gnucobol/files/) file.
### Compiling
You can run [compile.bat](https://github.com/SnowmanSixtyFour/COBOLGame/blob/main/compile.bat) after all necessities are installed, to compile the game.

Alternatively, you can run this specific command in the directory of main.cbl to compile the game:

``cobc -x -o "COBOL Game" main.cbl config.c -I. -L. -lraylib``

The following instructions are used to compile the game into an executable file for your system.

For additional commands, review the GnuCOBOL documentation.
### Additional Info
As stated, this game was also made with the [raylib](https://www.raylib.com/) library.

Since the repository comes with [raylib.h](https://github.com/raysan5/raylib/blob/master/src/raylib.h) and [raylib.dll](https://github.com/raysan5/raylib/releases/download/2.6.0/raylib-2.6.0-Win64-msvc15.zip), they are not required to  be manually set up.

# Copyright
Copyright (c) 2026 Snowman64, under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

raylib is licensed under an [unmodified zlib/libpng license](https://www.raylib.com/license.html).