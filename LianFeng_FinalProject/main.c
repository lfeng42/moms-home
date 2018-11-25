/**********
I am making a game where the player 
has to clean up all the trash in the house before 
the timer runs out and mom comes home!

The player picks up trash by colliding with it. The
numbers in the left corner say how much trash is left. The 
timer counts down from one minute on the right.

If a player runs into a vase, it will have to 
run to the nearest red shelf to place it before
any other trash can be picked up.

If a player runs into a dog, the timer loses 5 seconds.

You win if you collect all the trash before the timer runs out.
You lose if you do not.

Pressing A while moving makes you run faster
Pressing L while moving makes you invincible-
You can run through dogs and vases without penalty. (CHEAT)


BUGS: Occasionally, character stops moving when running (while A is pressed) - 
probably because of edge cases in the collisionBitmap code.

Extra credit: Custom art (all image files), state pointers (main.c)



*********/


#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.c"
#include "start.h"
#include "pause.h"
#include "Lose.h"
#include "Win.h"
#include "spritesheet.h"
#include "instruct.h"
#include "controls.h"
#include "gamemusic.h"
#include "rustle.h"
#include "startsound.h"
#include "bark.h"
#include "seethru.h"

// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToInstr();
void instr();
void goToCtrl();
void ctrl();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void (*state)();


// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// OAM Buffer
OBJ_ATTR shadowOAM[128];

// Random Seed
int seed;

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        setupSounds();
        setupInterrupts();

        state();
               
    }
}

// Sets up GBA
void initialize() {

    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {

    waitForVBlank();

    // // Load the background
    loadPalette(startPal);
    DMANow(3, startTiles, &CHARBLOCK[0], startTilesLen/2);
    DMANow(3, startMap, &SCREENBLOCK[31], startMapLen/2);

    // Set up and show the background
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_8BPP;
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    playSoundA(startsound, STARTSOUNDLEN, STARTSOUNDFREQ, 1);

    // Begin the seed randomization

    state = start;
}

// Runs every frame of the start state
void start() {

    seed++;

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {

        // Seed the random generator
        goToInstr();
    }
}

void goToInstr() {

    waitForVBlank();

    // Load the background
    loadPalette(instructPal);
    DMANow(3, instructTiles, &CHARBLOCK[0], instructTilesLen/2);
    DMANow(3, instructMap, &SCREENBLOCK[31], instructMapLen/2);

    // Set up and show the background
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_8BPP;
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    // Begin the seed randomization
    seed = 0;

    state = instr;
}

// Runs every frame of the start state
void instr() {

    seed++;

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToCtrl();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToStart();
    }
}

void goToCtrl() {

    waitForVBlank();

    // Load the backgrounds

    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE;

    loadPalette(controlsPal);

    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_8BPP;

    DMANow(3, &controlsTiles, &CHARBLOCK[0], controlsTilesLen/2);
    DMANow(3, &controlsMap, &SCREENBLOCK[31], controlsMapLen/2);


    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29) | BG_8BPP;


    DMANow(3, &seethruTiles, &CHARBLOCK[1], seethruTilesLen/2);
    DMANow(3, &seethruMap, &SCREENBLOCK[29], seethruMapLen/2);

    // Begin the seed randomization
    seed = 0;

    state = ctrl;
}

void ctrl() {

    seed++;

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {

        // Seed the random generator
        srand(seed);

        goToGame();
        initGame();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToInstr();
    }
}

// Sets up the game state
void goToGame() {

    waitForVBlank();

    // Load the background
    loadPalette(gamemapPal);
    DMANow(3, gamemapTiles, &CHARBLOCK[0], gamemapTilesLen/2);
    DMANow(3, gamemapMap, &SCREENBLOCK[28], gamemapMapLen/2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_LARGE;
    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    
    // Load the spritesheet
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    playSoundA(gamemusic, GAMEMUSICLEN, GAMEMUSICFREQ, 1);

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    state = game;
}

// Runs every frame of the game state
void game() {

    updateGame();
    waitForVBlank();
    drawGame();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) 
        goToPause();
    else if (trashRemaining == 0)
        goToWin();
    else if (done == 1)
        goToLose();
}

// Sets up the pause state
void goToPause() {
    
    waitForVBlank();
    pauseSound();

    // Load the background
    loadPalette(pausePal);
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen/2);
    DMANow(3, pauseMap, &SCREENBLOCK[31], pauseMapLen/2);

    // Set up and show the background
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_8BPP;
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = pause;
}

// Runs every frame of the pause state
void pause() {
    
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)){
        goToGame();
        unpauseSound();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToStart();
    }
}

// Sets up the win state
void goToWin() {
    
    waitForVBlank();
    stopSound();

    // Load the background
    loadPalette(WinPal);
    DMANow(3, WinTiles, &CHARBLOCK[0], WinTilesLen/2);
    DMANow(3, WinMap, &SCREENBLOCK[31], WinMapLen/2);

    // Set up and show the background
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_8BPP;
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = win;
}

// Runs every frame of the win state
void win() {
    
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Sets up the lose state
void goToLose() {
    
    waitForVBlank();
    stopSound();

    // Load the background
    loadPalette(LosePal);
    DMANow(3, LoseTiles, &CHARBLOCK[0], LoseTilesLen/2);
    DMANow(3, LoseMap, &SCREENBLOCK[31], LoseMapLen/2);

    // Set up and show the background
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_8BPP;
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = lose;
}

// Runs every frame of the lose state
void lose() {
     
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) 
        goToStart();
}