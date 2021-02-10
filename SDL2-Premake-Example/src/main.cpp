#include <stdio.h>
#include <string.h>
#include <SDL.h>
#undef main

int main(int argc, char** argv)
{
	SDL_Init(SDL_INIT_VIDEO);

	SDL_Window* window = SDL_CreateWindow("SDL with Premake", 150, 150, 800, 600, SDL_WINDOW_SHOWN);

	SDL_Delay(5000);

	SDL_DestroyWindow(window);
	SDL_Quit();
    return 0;
}