// Generic struct for animated sprite
typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int travel;
    int span;
    int index;
    int active;
    int held;
} ANISPRITE;

// Generic struct for sound
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vbCount;
}SOUND;

// Constants
#define MAPHEIGHT 512
#define MAPWIDTH 512
#define DOGSIZE 6
#define TRASHSIZE 12
#define VASESIZE 7

// Variables
extern ANISPRITE player;
extern ANISPRITE dog[DOGSIZE];
extern ANISPRITE trash[TRASHSIZE];
extern ANISPRITE vase[VASESIZE];
extern SOUND soundA;
extern SOUND soundB;

// Background offsets
extern int hOff;
extern int vOff;
extern int test;
extern int done;
// extern int valid;
// extern int searching;

// Prototypes
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
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);
void pauseSound();
void unpauseSound();
void stopSound();
void setupInterrupts();
void interruptHandler();