#include "include/raylib.h"

void Initialize(int width, int height, const char* title) {
    InitWindow(width, height, title);
}

int WindowClose(void) {
    if (WindowShouldClose()) {
        return 1;
    }
    return 0;
}

void Draw()
{
    BeginDrawing();
}

void End()
{
    EndDrawing();
}

void Clear(int r, int g, int b, int a) {
    Color color = { (unsigned char)r, (unsigned char)g, (unsigned char)b, (unsigned char)a };
    ClearBackground(color);
}

void Text(const char* text, int x, int y, int fontSize, int r, int g, int b, int a) {
    Color color = { (unsigned char)r, (unsigned char)g, (unsigned char)b, (unsigned char)a };
    DrawText(text, x, y, fontSize, color);
}
