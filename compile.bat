@echo off
cobc -x -o "The Cobalt Dungeon" main.cbl raylib.c -I. -L. -lraylib
echo The game has finished compiling.
pause