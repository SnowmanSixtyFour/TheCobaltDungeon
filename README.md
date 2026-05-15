# The Cobalt Dungeon
<a href="https://www.gnu.org/licenses/gpl-3.0.en.html">
  <img src="https://img.shields.io/badge/License-GPLv3-blue.svg" width="100" alt="GNU General Public License v3.0">
</a>

### A game made with [GnuCOBOL](https://gnucobol.sourceforge.io/) and [raylib](https://www.raylib.com/).

The Cobalt Dungeon is an upcoming game. More to be added later.

## Installation
### Downloading

To download the latest version of The Cobalt Dungeon, view [Releases](https://github.com/SnowmanSixtyFour/TheCobaltDungeon/releases).

### Manual
Additionally, if you wish to create your own release after compiling, place The Cobalt Dungeon.exe, raylib.dll, and the assets folder all in the same directory.
```
├── assets
│   └── fonts
│       └── calibri.ttf
├── raylib.dll
└── The Cobalt Dungeon.exe
```
## Compiling
### GnuCOBOL
To compile The Cobalt Dungeon, you must first install [GnuCOBOL](https://gnucobol.sourceforge.io/).

The documentation for installing GnuCOBOL can be found in its [README](https://sourceforge.net/projects/gnucobol/files/) file.

### Compile.bat
You can run [compile.bat](https://github.com/SnowmanSixtyFour/COBOLGame/blob/main/compile.bat) after all necessities are installed, to compile the game.

Alternatively, you can run this specific command in the directory of main.cbl to compile the game:

``cobc -x -o "The Cobalt Dungeon" main.cbl raylib.c -I. -L. -lraylib``

The following instructions are used to compile the game into an executable file for your system.

For additional commands, review the GnuCOBOL documentation.
### Additional Info
#### raylib
As stated, this game was also made with the [raylib](https://www.raylib.com/) library.

Since the repository comes with [raylib.h](https://github.com/raysan5/raylib/blob/master/src/raylib.h) and [raylib.dll](https://github.com/raysan5/raylib/releases/download/2.6.0/raylib-2.6.0-Win64-msvc15.zip), they are not required to  be manually set up.

## Special Thanks

[raylib Core Example: Window Letterbox](https://github.com/raysan5/raylib/blob/master/examples/core/core_window_letterbox.c) - anatagawa

# Copyright
Copyright (c) 2026 Snowman64, under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

raylib is free and open-source, licensed under the [zlib/libpng License](https://www.raylib.com/license.html).