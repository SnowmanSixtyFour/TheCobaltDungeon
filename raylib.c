// Wrapper to pull from raylib

#include "include/raylib.h"

#define MAX(a, b) ((a)>(b)? (a) : (b))
#define MIN(a, b) ((a)<(b)? (a) : (b))

// Variables

RenderTexture2D target;

Font font;

const int
    screenWidth = 844,
    screenHeight = 480,
    
    fontSize = 48;
float scale = 1.0f;

// Window Properties

void SetProperties()
{
    SetConfigFlags(FLAG_WINDOW_RESIZABLE);
}

void Initialize(int width, int height, const char* title, int allowResizing)
{
    // Initialize Window Variables
    InitWindow(width, height, title);
    
    // Set Variables
    font = LoadFontEx("assets/fonts/calibri.ttf", fontSize, 0, 250);
}

void Update()
{
    // Window Size
    scale = MIN((float)GetScreenWidth()/screenWidth, (float)GetScreenHeight()/screenHeight);
}

void SetFPS(int fps)
{
    SetTargetFPS(fps);
}

int WindowClose(void)
{
    if (WindowShouldClose())
    {
        return 1;
    }
    return 0;
}

// Draw

void CreateTarget()
{
    // Create Target
    target = LoadRenderTexture(screenWidth, screenHeight);
    SetTextureFilter(target.texture, TEXTURE_FILTER_POINT);
}

void StartTarget()
{
    // Begin Drawing in Target
    BeginTextureMode(target);
}

void DrawTarget()
{
    DrawTexturePro(target.texture, (Rectangle){ 0.0f, 0.0f, (float)target.texture.width, (float)-target.texture.height },
                           (Rectangle){ (GetScreenWidth() - ((float)screenWidth*scale))*0.5f, (GetScreenHeight() - ((float)screenHeight*scale))*0.5f,
                           (float)screenWidth*scale, (float)screenHeight*scale }, (Vector2){ 0, 0 }, 0.0f, WHITE);
}

void EndTarget()
{
    EndTextureMode();
}

void Unload()
{
    // Unload Variables
    
    UnloadRenderTexture(target); // Render Target
    
    // Fonts
    UnloadFont(font);
}

void Draw()
{
    BeginDrawing();
}

void End()
{
    EndDrawing();
}

void Clear(int r, int g, int b, int a)
{
    Color color = { (unsigned char)r, (unsigned char)g, (unsigned char)b, (unsigned char)a };
    ClearBackground(color);
}

// Defined Text
void CustomText(const char* text, int x, int y, int r, int g, int b, int a)
{
    Color color = { (unsigned char)r, (unsigned char)g, (unsigned char)b, (unsigned char)a };
    DrawTextEx(font, text, (Vector2){x, y}, 20, 2, color);
}

// Pre-Defined Text
void Text(const char* text, int x, int y)
{
    DrawTextEx(font, text, (Vector2){x, y}, 20, 2, WHITE);
}