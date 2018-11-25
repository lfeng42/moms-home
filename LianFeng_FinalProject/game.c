#include "myLib.h"
#include "spritesheet.h"
#include "gamemap.h"
#include "collisionmap.h"
#include "game.h"
#include "rustle.h"
#include "bark.h"

void initialize();
void initPlayer();
void initDog();
void initTrash();
void initVase();
void updateGame();
void updatePlayer();
void updateDog();
void updateTrash();
void updateVase();
void animatePlayer();
void animateDog();
void drawGame();
void drawPlayer();
void drawDog();
void drawTrash();
void drawVase();
void drawScore();
void setupSounds();
void playSoundA(const unsigned char* sound, int length, int frequency, int loops);
void playSoundB(const unsigned char* sound, int length, int frequency, int loops);
void pauseSound();
void unpauseSound();
void stopSound();
void setupInterrupts();
void interruptHandler();

int hOff;
int vOff;
int test;
int done;
int valid;
int trashRemaining;
int timeRemaining;
int totalFrames;
int collided;

ANISPRITE player;
ANISPRITE dog[DOGSIZE];
ANISPRITE trash[TRASHSIZE];
ANISPRITE vase[VASESIZE];
SOUND soundA;
SOUND soundB;

enum {PLAYERFRONT, PLAYERBACK, PLAYERLEFT, PLAYERRIGHT, PLAYERIDLE};

void initGame() {
    vOff = 46;
    hOff = 9;
    test = 0;
    done = 0;
    trashRemaining = TRASHSIZE;
    timeRemaining = 60;
    totalFrames = 0;
    collided = 0;

    initPlayer();
    initDog();
    initTrash();
    initVase();
}

void initPlayer() {
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    player.worldRow = 160/2-player.width/2 + vOff;  // Puts it in the middle of the screen in the world
    player.worldCol = 240/2-player.height/2 + hOff; // Puts it in the middle of the screen in the world
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = PLAYERFRONT;
    player.held = 0;
}

void initDog() {
    for (int i = 0; i < DOGSIZE; i++) {
        dog[i].width = 16;
        dog[i].height = 16;
        dog[i].aniCounter = 0;
        dog[i].curFrame = 0;
        dog[i].numFrames = 3;
        if (i % 2 == 0) {
            dog[i].rdel = 1;
            dog[i].cdel = 0;
        } else {
            dog[i].rdel = 0;
            dog[i].cdel = 1;
        }
        if (i == 0) {
            dog[i].worldRow = 190;
            dog[i].worldCol = 165;
            dog[i].span = 20;
        } else if (i == 1) {
            dog[i].worldRow = 60;
            dog[i].worldCol = 100;
            dog[i].span = 40;
        } else if (i == 2) {
            dog[i].worldRow = 345;
            dog[i].worldCol = 210;
            dog[i].span = 35;
        } else if (i == 3) {
            dog[i].worldRow = 65;
            dog[i].worldCol = 335;
            dog[i].span = 65;
        } else if (i == 4) {
            dog[i].worldRow = 355;
            dog[i].worldCol = 330;
            dog[i].span = 30;
        } else if (i == 5) {
            dog[i].worldRow = 200;
            dog[i].worldCol = 415;
            dog[i].span = 55;
        }
        dog[i].travel = 1;
        dog[i].index = 1+i;
    }
}

void initTrash() {
    for (int i = 0; i < TRASHSIZE; i++) {
        valid = 0;
        trash[i].width = 8;
        trash[i].height = 8;
        int r = 0;
        int c = 0;
        while (valid == 0) {
            r = (rand() % (512 - trash[i].height)) + trash[i].height;
            c = (rand() % (512 - trash[i].width)) + trash[i].width;
            if (collisionmapBitmap[OFFSET(r, c, 512)] != 0
                && collisionmapBitmap[OFFSET(r - 1, c, 512)] != 0
                && collisionmapBitmap[OFFSET(r - 1, c - 1, 512)] != 0
                && collisionmapBitmap[OFFSET(r - 1, c + 1, 512)] != 0
                && collisionmapBitmap[OFFSET(r, c + 1, 512)] != 0
                && collisionmapBitmap[OFFSET(r, c - 1, 512)] != 0
                && collisionmapBitmap[OFFSET(r + 1, c, 512)] != 0
                && collisionmapBitmap[OFFSET(r + 1, c - 1, 512)] != 0
                && collisionmapBitmap[OFFSET(r + 1, c + 1, 512)] != 0) {
                valid = 1;
            }
        }
        trash[i].worldRow = r;
        trash[i].worldCol = c;
        trash[i].index = 1+i+DOGSIZE;
        trash[i].active = 1;
    }
}

void initVase() {
    for (int i = 0; i < VASESIZE; i++) {
        valid = 0;
        vase[i].width = 8;
        vase[i].height = 8;
        int r = 10;
        int c = 10;
        while (valid == 0) {
            r = (rand() % (512 - trash[i].height)) + trash[i].height;
            c = (rand() % (512 - trash[i].width)) + trash[i].width;
            if (collisionmapBitmap[OFFSET(r, c, 512)] != 0
                && collisionmapBitmap[OFFSET(r - 1, c, 512)] != 0
                && collisionmapBitmap[OFFSET(r - 1, c - 1, 512)] != 0
                && collisionmapBitmap[OFFSET(r - 1, c + 1, 512)] != 0
                && collisionmapBitmap[OFFSET(r, c + 1, 512)] != 0
                && collisionmapBitmap[OFFSET(r, c - 1, 512)] != 0
                && collisionmapBitmap[OFFSET(r + 1, c, 512)] != 0
                && collisionmapBitmap[OFFSET(r + 1, c - 1, 512)] != 0
                && collisionmapBitmap[OFFSET(r + 1, c + 1, 512)] != 0) {
                valid = 1;
            }
        }
        vase[i].worldRow = r;
        vase[i].worldCol = c;
        vase[i].index = 1+i+DOGSIZE+TRASHSIZE;
        vase[i].active = 1;
        vase[i].held = 0;
    }
}

// Update the game logic
void updateGame() {
    updatePlayer();
    for (int i = 0; i < DOGSIZE; i++)
        updateDog(&dog[i]);
    for (int i = 0; i < TRASHSIZE; i++)
        updateTrash(&trash[i]);
    for (int i = 0; i < VASESIZE; i++)
        updateVase(&vase[i]);
}

// Update the player character
void updatePlayer() {
    if (BUTTON_HELD(BUTTON_A)) {
        player.rdel = 2;
        player.cdel = 2;
    } else {
        player.rdel = 1;
        player.cdel = 1;
    }

    if (collisionmapBitmap[OFFSET(player.worldRow - player.rdel, player.worldCol + player.width - 1, 512)] != 0) {
        if (BUTTON_HELD(BUTTON_UP) && player.screenRow > (SCREENHEIGHT/2)) {
            player.worldRow -= player.rdel;
            player.screenRow -= player.rdel;
        } else if (BUTTON_HELD(BUTTON_UP) && player.screenRow <= (SCREENHEIGHT/2) && vOff > 0) {
            vOff -= player.rdel;
            player.worldRow -= player.rdel;
            player.screenRow -= player.rdel;
        } else if (BUTTON_HELD(BUTTON_UP) && player.screenRow > (SCREENHEIGHT/2)) {
            if (player.worldRow > 0) {
                player.worldRow -= player.rdel;
                player.screenRow -= player.rdel;
            }
        } else if (BUTTON_HELD(BUTTON_UP) && vOff == 0) {
            if (player.worldRow > 0) {
                player.worldRow -= player.rdel;
                player.screenRow -= player.rdel;
            }
        }
    }

    if (collisionmapBitmap[OFFSET(player.worldRow + player.height + player.rdel - 1, player.worldCol + player.width - 1, 512)] != 0) {
        if (BUTTON_HELD(BUTTON_DOWN) && player.screenRow < (SCREENHEIGHT/2)) {
            player.worldRow += player.rdel;
            player.screenRow += player.rdel;
        } else if (BUTTON_HELD(BUTTON_DOWN) && player.screenRow < (SCREENHEIGHT/2)) {
            if (player.worldRow < 512) {
                player.worldRow += player.rdel;
                player.screenRow += player.rdel;
            }
        } else if (BUTTON_HELD(BUTTON_DOWN) && player.screenRow >= (SCREENHEIGHT/2) && vOff < (512 - SCREENHEIGHT)) {
            vOff += player.rdel;
            if (player.worldRow < 512) {
                player.worldRow += player.rdel;
                player.screenRow += player.rdel;
            }
        } else if (BUTTON_HELD(BUTTON_DOWN) && vOff == (512 - SCREENHEIGHT)){
            if (player.worldRow < (512 - player.height)) {
                player.worldRow += player.rdel;
                player.screenRow += player.rdel;
            }
        }
    }

    if (collisionmapBitmap[OFFSET(player.worldRow + player.height - 1, player.worldCol - player.cdel, 512)] != 0) {
        if (BUTTON_HELD(BUTTON_LEFT) && player.screenCol > (SCREENWIDTH/2)) {
            player.worldCol -= player.cdel;
            player.screenCol -= player.cdel;
        } else if (BUTTON_HELD(BUTTON_LEFT) && player.screenCol <= (SCREENWIDTH/2) && hOff > 0) {
            hOff -= player.cdel;
            player.worldCol -= player.cdel;
            player.screenCol -= player.cdel;
        } else if (BUTTON_HELD(BUTTON_LEFT) && player.screenCol > (SCREENWIDTH/2)) {
            if (player.worldCol > 0) {
                player.worldCol -= player.cdel;
                player.screenCol -= player.cdel;
            }
        } else if (BUTTON_HELD(BUTTON_LEFT) && hOff == 0) {
            if (player.worldCol > 0) {
                player.worldCol -= player.cdel;
                player.screenCol -= player.cdel;
            }
        }
    }

    if (collisionmapBitmap[OFFSET(player.worldRow + player.height - 1, player.worldCol + player.width + player.cdel - 1, 512)] != 0) {
        if (BUTTON_HELD(BUTTON_RIGHT) && player.screenCol < (SCREENWIDTH/2)) {
            player.worldCol += player.cdel;
            player.screenCol += player.cdel;
        } else if (BUTTON_HELD(BUTTON_RIGHT) && player.screenCol < (SCREENWIDTH/2)) {
            if (player.worldCol < 512) {
                player.worldCol += player.cdel;
                player.screenCol += player.cdel;
            }
        } else if (BUTTON_HELD(BUTTON_RIGHT) && player.screenCol >= (SCREENWIDTH/2) && hOff < (512 - SCREENWIDTH)) {
            hOff += player.cdel;
            if (player.worldCol < 512) {
                player.worldCol += player.cdel;
                player.screenCol += player.cdel;
            }
        } else if (BUTTON_HELD(BUTTON_RIGHT) && hOff == (512 - SCREENWIDTH)){
            if (player.worldCol < (512 - player.width)) {
                player.worldCol += player.cdel;
                player.screenCol += player.cdel;
            }
        }
    }

    for (int i = 0; i < VASESIZE; i++) {
        if (vase[i].held == 1 && (collision(player.worldRow, player.worldCol, player.height, player.width, 125, 133, 20, 50)
                                || collision(player.worldRow, player.worldCol, player.height, player.width, 175, 428, 20, 50)
                                || collision(player.worldRow, player.worldCol, player.height, player.width, 20, 346, 23, 50))) {
            player.held = 0;
        }
    }

    player.screenRow = player.worldRow - vOff;
    player.screenCol = player.worldCol - hOff;
    animatePlayer();
}

void updateDog(ANISPRITE* d) {
    if (d->screenRow < 0 || d->screenRow > 160 || d->screenCol < 0 || d->screenCol > 240) {
        d->hide = 1;
    } else {
        d->hide = 0;
    }
    if (d->cdel != 0) {
        d->travel += (d->cdel * 1);
        if (d->travel == d->span || d->travel == 0) {
            d->cdel *= -1;
        }
        d->screenRow = d->worldRow - vOff;
        d->screenCol = d->worldCol - hOff + d->travel;
    } else {
        d->travel += (d->rdel * 1);
        if (d->travel == d->span || d->travel == 0) {
            d->rdel *= -1;
        }
        d->screenRow = d->worldRow - vOff + d->travel;
        d->screenCol = d->worldCol - hOff;
    }
    if (!BUTTON_HELD(BUTTON_L) && !collided && collision(player.screenRow, player.screenCol, player.height, player.width, d->screenRow, d->screenCol, d->height, d->width) && !BUTTON_HELD(BUTTON_L)) {
        collided = 1;
        if (totalFrames % 10 == 0) {
            timeRemaining -= 5;
        }
        playSoundB(bark, BARKLEN, BARKFREQ, 0);
    } else {
        collided = 0;
    }
    animateDog(d);
}

void updateTrash(ANISPRITE* t) {
    if (t->active && (t->screenRow < 0 || t->screenRow > 160 || t->screenCol < 0 || t->screenCol > 240)) {
        t->hide = 1;
    } else {
        t->hide = 0;
    }
    if (!t->hide && t->active) {
        if (!player.held && collision(t->worldRow, t->worldCol, t->height, t->width, player.worldRow, player.worldCol, player.height, player.width)) {
            t->hide = 1;
            t->active = 0;
            trashRemaining--;
            playSoundB(rustle, RUSTLELEN, RUSTLEFREQ, 0);
        }
    }
    t->screenRow = t->worldRow - vOff;
    t->screenCol = t->worldCol - hOff;
}

void updateVase(ANISPRITE* v) {
    if (v->active && (v->screenRow < 0 || v->screenRow > 160 || v->screenCol < 0 || v->screenCol > 240)) {
        v->hide = 1;
    } else {
        v->hide = 0;
    }
    if (!v->hide && v->active) {
        if (!BUTTON_HELD(BUTTON_L) && !player.held && collision(v->worldRow, v->worldCol, v->height, v->width, player.worldRow, player.worldCol, player.height, player.width)) {
            v->hide = 1;
            v->held = 1;
            player.held = 1;
            v->active = 0;
        }
    }
    v->screenRow = v->worldRow - vOff;
    v->screenCol = v->worldCol - hOff;
}


void animatePlayer() {
    player.prevAniState = player.aniState;
    player.aniState = PLAYERIDLE;

    int animate_amt = 10 / player.rdel;
    if(player.aniCounter % animate_amt == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    
    if(BUTTON_HELD(BUTTON_UP))
        player.aniState = PLAYERBACK;
    if(BUTTON_HELD(BUTTON_DOWN))
        player.aniState = PLAYERFRONT;
    if(BUTTON_HELD(BUTTON_LEFT))
        player.aniState = PLAYERLEFT;
    if(BUTTON_HELD(BUTTON_RIGHT))
        player.aniState = PLAYERRIGHT;

    if (player.aniState == PLAYERIDLE) {
        player.curFrame = 0;
        player.aniState = player.prevAniState;
    } else {
        player.aniCounter++;
    }
}


void animateDog(ANISPRITE* d) {
    if(d->aniCounter % 10 == 0) {
        d->curFrame = (d->curFrame + 1) % d->numFrames;
    }
    if (d->cdel < 0) {
        d->aniState = 2;
    } else if (d->cdel > 0) {
        d->aniState = 4;
    }
    if (d->rdel < 0) {
        d->aniState = 8;
    } else if (d->rdel > 0) {
        d->aniState = 6;
    }
    d->aniCounter++;
}

void drawGame() {
    drawScore();
    drawPlayer();
    for (int i = 0; i < DOGSIZE; i++) {
        drawDog(&dog[i]);
    }
    for (int i = 0; i < TRASHSIZE; i++) {
        drawTrash(&trash[i]);
    }
    for (int i = 0; i < VASESIZE; i++) {
        drawVase(&vase[i]);
    }
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
}

void drawPlayer() {
    int row_val = 0;
    if (player.held) {
        row_val = 4;
    } else if (BUTTON_HELD(BUTTON_L)) {
        row_val = 6;
    } else {
        row_val = 2;
    }
    if (player.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & player.screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (COLMASK & player.screenCol) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(row_val, (player.aniState * 6 + (player.curFrame * 2)) + 8);
    }
}

void drawDog(ANISPRITE* d) {
    if (d->hide) {
        shadowOAM[d->index].attr0 = ATTR0_HIDE;
    } else {
        shadowOAM[d->index].attr0 = (d->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[d->index].attr1 = (d->screenCol & COLMASK) | ATTR1_SMALL;
        shadowOAM[d->index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(d->aniState, (d->curFrame * 2));
    }
}

void drawTrash(ANISPRITE* t) {
    if (t->hide || !t->active) {
        shadowOAM[t->index].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[t->index].attr0 = (t->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[t->index].attr1 = (t->screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[t->index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2, 6);
    }
}

void drawVase(ANISPRITE* v) {
    if (v->hide || !v->active) {
        shadowOAM[v->index].attr0 = ATTR0_HIDE;
    } else {
        shadowOAM[v->index].attr0 = (v->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[v->index].attr1 = (v->screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[v->index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2, 7);
    }
}

void drawScore() {
    //score
    int score_ones = trashRemaining % 10;
    int score_tens = trashRemaining / 10;
    shadowOAM[1+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr0 = (140 & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[1+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr1 = (1 & COLMASK) | ATTR1_SMALL;
    shadowOAM[1+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, (score_tens * 2));
    shadowOAM[2+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr0 = (140 & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[2+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr1 = (16 & COLMASK) | ATTR1_SMALL;
    shadowOAM[2+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, (score_ones * 2));
    int time_ones = timeRemaining % 10;
    int time_tens = timeRemaining / 10;
    //time
    shadowOAM[3+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr0 = (140 & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[3+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr1 = (212 & COLMASK) | ATTR1_SMALL;
    shadowOAM[3+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, (time_tens * 2));
    shadowOAM[4+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr0 = (140 & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[4+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr1 = (224 & COLMASK) | ATTR1_SMALL;
    shadowOAM[4+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, (time_ones * 2));
    //timer
    shadowOAM[5+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr0 = (140 & ROWMASK) | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[5+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr1 = (148 & COLMASK) | ATTR1_MEDIUM;
    shadowOAM[5+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 20);
    shadowOAM[6+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr0 = (140 & ROWMASK) | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[6+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr1 = (180 & COLMASK) | ATTR1_MEDIUM;
    shadowOAM[6+(1+DOGSIZE+TRASHSIZE+VASESIZE)].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 24);
    if (totalFrames % 60 == 0) {
        timeRemaining--;
    }
    if (timeRemaining < 0) {
        done = 1;
    }
    totalFrames++;
}

void setupSounds()
{
    REG_SOUNDCNT_X = SND_ENABLED;
    REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_TO_BOTH | 
                     DSA_TIMER0 | 
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 | 
                     DSB_OUTPUT_TO_BOTH | 
                     DSB_TIMER1 | 
                     DSB_FIFO_RESET;
    REG_SOUNDCNT_L = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;
        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;
        DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);
        REG_TM0CNT = 0;
        REG_TM0D = -ticks;
        REG_TM0CNT = TIMER_ON;
        soundA.data = sound;
        soundA.length = length;
        soundA.frequency = frequency;
        soundA.duration = (VBLANK_FREQ*length)/frequency;
        soundA.vbCount = 0;
        soundA.isPlaying = 1;
        soundA.loops = loops;
}


void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {
        dma[2].cnt = 0;
        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;
        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);
        REG_TM1CNT = 0;
        REG_TM1D = -ticks;
        REG_TM1CNT = TIMER_ON;
        soundB.data = sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.duration = (VBLANK_FREQ*length)/frequency;
        soundB.vbCount = 0;
        soundB.isPlaying = 1;
        soundB.loops = loops;
}

void pauseSound() {
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    REG_TM0CNT = 0;
    REG_TM1CNT = 0;
}

void unpauseSound() {
    soundA.isPlaying = 1;
    soundB.isPlaying = 1;
    REG_TM0CNT = TIMER_ON;
    REG_TM1CNT = TIMER_ON;
}

void stopSound() {
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    dma[1].cnt = 0;
    dma[2].cnt = 0;
    REG_TM0CNT = 0;
    REG_TM1CNT = 0;
}

void setupInterrupts() {
    REG_IME = 0;
    REG_INTERRUPT = (unsigned int) interruptHandler;
    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;
    REG_IME = 1;
}

void interruptHandler() {
    REG_IME = 0;
    if(REG_IF & INT_VBLANK)
    {
        if (soundA.isPlaying) {
            soundA.vbCount++;
        } if (soundA.vbCount > soundA.duration) {
            if (soundA.loops) {
                playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
            } else {
                soundA.isPlaying = 0;
                dma[1].cnt = 0;
                REG_TM0CNT = 0;
            }
        }
        if (soundB.isPlaying) {
            soundB.vbCount++;
        } if (soundB.vbCount > soundB.duration) {
            if (soundB.loops) {
                playSoundB(soundB.data, soundB.length, soundB.frequency, soundB.loops);
            } else {
                soundB.isPlaying = 0;
                dma[2].cnt = 0;
                REG_TM1CNT = 0;
            }
        }
        REG_IF = INT_VBLANK; 
    }
    REG_IME = 1;
}