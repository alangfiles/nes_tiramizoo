#define ACCEL 0x20
#define GRAVITY 0x50
#define MAX_SPEED 0x100
#define JUMP_VEL -0x600



#pragma bss-name(push, "ZEROPAGE")

// GLOBAL VARIABLES
unsigned char pad1;
unsigned char pad1_new;
unsigned char collision;
unsigned char climbable;
unsigned char collision_L;
unsigned char collision_R;
unsigned char collision_U;
unsigned char collision_D;
unsigned char coordinates;
unsigned char temp1;
unsigned char temp2;
unsigned char temp3;
unsigned char temp4;
unsigned int temp5;
unsigned int temp6;
unsigned char eject_L; // from the left
unsigned char eject_R; // remember these from the collision sub routine
unsigned char eject_D; // from below
unsigned char eject_U; // from up
unsigned char direction; //facing left or right?
#define LEFT 0
#define RIGHT 1

int address;
unsigned char x; // room loader code
unsigned char y;
unsigned char nt;
unsigned char index;
unsigned char room;
unsigned char map;
unsigned int old_x;
//unsigned int old_y;





#pragma bss-name(push, "BSS")

unsigned char c_map[240];
unsigned char c_map2[240];

struct Base {
	unsigned char x;
	unsigned char y;
	unsigned char width;
	unsigned char height;
};

struct Base Generic; 

struct Hero {
	unsigned int x; // low byte is sub-pixel
	unsigned int y;
	signed int vel_x; // speed, signed, low byte is sub-pixel
	signed int vel_y;
};

struct Hero BoxGuy1 = {0x4000,0xa400}; // starting position
// the width and height should be 1 less than the dimensions (14x12)
// note, I'm using the top left as the 0,0 on x,y

#define HERO_WIDTH 13
#define HERO_HEIGHT 18







const unsigned char palette_bg[]={
0x00, 0x16, 0x07, 0x08, 
0x00, 0x16, 0x07, 0x08, 
0x00, 0x16, 0x07, 0x08, 
0x00, 0x16, 0x07, 0x08, 
}; 



const unsigned char palette_sp[]={
0x28, 0x06, 0x36, 0x30, 
0x28, 0x06, 0x36, 0x30,
0x28, 0x06, 0x36, 0x30,
0x28, 0x06, 0x36, 0x30,
}; 


// 5 bytes per metatile definition, tile TL, TR, BL, BR, palette 0-3
// T means top, B means bottom, L left,R right
// 51 maximum # of metatiles = 255 bytes
// 5th byte, 	1000 0000 = floor collision
// 				0100 0000 = all collision, solid
//				0000 0011 = palette

const unsigned char metatiles1[]={
	0, 0, 0, 0,  0,  //0 - empty
	3, 3, 3, 3,  0,  //1 - wall
	4, 5, 4, 5,  0,  //2 - ladder
	6, 6, 0, 0,  0,  //3 - top floor
	2, 2, 2, 2,  0,  //4 - bottom floor
	6, 6, 5, 5,  0,  //5 - top floor with ladder
	4, 5, 8, 9,  0,  //6 - bottom floor with lader
};

#define COL_DOWN 0x80
#define COL_ALL 0x40

const unsigned char is_solid[]={
	0, //empty block
	COL_ALL, // wall
	0, //ladder
	COL_DOWN, //top floor
	COL_DOWN, //bottom floor
	COL_DOWN, //topfloorwithladder
	COL_DOWN, //botfloorwithladder
};

const unsigned char is_climbable[]={
	0, //empty block
	0, // wall
	1, //ladder
	0, //top floor
	0, //bottom floor
	1, //topfloorwithladder
	1, //botfloorwithladder
};



#include "BG/Room1.c"
#include "BG/Room2.c"
#include "BG/Room3.c"
#include "BG/Room4.c"
#include "BG/Room5.c"

#define MAX_ROOMS (5-1)
// data is exactly 240 bytes, 16 * 15
// doubles as the collision map data


const unsigned char * const Rooms[]= {
	Room1, Room2, Room3, Room4, Room5
};


// PROTOTYPES
void load_room(void);
void draw_sprites(void);
void movement(void);	
void bg_collision(void);
void bg_collision_sub(void);
void bg_check_low(void);
void bg_check_climbable(void);
