/*	
 *  Tiramizoo, an NES game about making cake
 *  in a hectic zoo kitchen.
 *  based off NESDoug's tutorials and C libraries
 */	
 

#include "LIB/neslib.h"
#include "LIB/nesdoug.h"
#include "Sprites.h" // holds our metasprite data
#include "tiramizoo.h"



	
	
void main (void) { 
	
	ppu_off(); // screen off
	
	// load the palettes  
	pal_bg(palette_bg);
	pal_spr(palette_sp);

	// use the second set of tiles for sprites
	// both bg and sprites are set to 0 by default
	bank_spr(1);

	set_vram_buffer(); // do at least once
	
	load_room();

	ppu_on_all(); // turn on screen
	
	

	
	while (1){
		// infinite loop
		ppu_wait_nmi(); // wait till beginning of the frame
		
		pad1 = pad_poll(0); // read the first controller
		pad1_new = get_pad_new(0);
		
		movement();
		draw_sprites();
	}
}




void load_room(void){
	set_data_pointer(Rooms[0]);
	set_mt_pointer(metatiles1);
	for(y=0; ;y+=0x20){
		for(x=0; ;x+=0x20){
			address = get_ppu_addr(0, x, y);
			index = (y & 0xf0) + (x >> 4);
			buffer_4_mt(address, index); // ppu_address, index to the data
			flush_vram_update2();
			if (x == 0xe0) break;
		}
		if (y == 0xe0) break;
	}
	
	
	
	// // a little bit in the next room
	// set_data_pointer(Rooms[1]);
	// for(y=0; ;y+=0x20){
	// 	x = 0;
	// 	address = get_ppu_addr(1, x, y);
	// 	index = (y & 0xf0);
	// 	buffer_4_mt(address, index); // ppu_address, index to the data
	// 	flush_vram_update2();
	// 	if (y == 0xe0) break;
	// }
	
	// // copy the room to the collision map
	// // the second one should auto-load with the scrolling code
	memcpy (c_map, Rooms[0], 240);
}




void draw_sprites(void){
	// clear all sprites from sprite buffer
	oam_clear();
	
	// draw 1 metasprite
	if(direction == LEFT) {
		oam_meta_spr(high_byte(BoxGuy1.x), high_byte(BoxGuy1.y)-8, PlayerOneL);
	}
	else{
		oam_meta_spr(high_byte(BoxGuy1.x), high_byte(BoxGuy1.y)-8, PlayerOneR);
	}
}
	

	
// void movement(void){
// 	if(pad1 & PAD_LEFT){
// 		BoxGuy1.y -= 1;
// 	}
// 	else if (pad1 & PAD_RIGHT){
// 		BoxGuy1.y += 1;
// 	}
// 	Generic.x = high_byte(BoxGuy1.x); // this is much faster than passing a pointer to BoxGuy1
// 	Generic.y = high_byte(BoxGuy1.y);
// 	Generic.width = HERO_WIDTH;
// 	Generic.height = HERO_HEIGHT;
// 	bg_collision();
// 	if(collision_R) BoxGuy1.y -= 1;
// 	if(collision_L) BoxGuy1.y += 1;
	
// 	if(pad1 & PAD_UP){
// 		BoxGuy1.y -= 1;
// 	}
// 	else if (pad1 & PAD_DOWN){
// 		BoxGuy1.y += 1;
// 	}
// 	Generic.x = high_byte(BoxGuy1.x); // this is much faster than passing a pointer to BoxGuy1
// 	Generic.y = high_byte(BoxGuy1.y);
// 	Generic.width = HERO_WIDTH;
// 	Generic.height = HERO_HEIGHT;
// 	bg_collision();
// 	if(collision_D) BoxGuy1.y -= 1;
// 	if(collision_U) BoxGuy1.y += 1;
// }	
	
void movement(void){
	
// handle x

	old_x = BoxGuy1.x;
	
	if(pad1 & PAD_LEFT){
		direction = LEFT;
		if(BoxGuy1.x <= 0x100) {
			BoxGuy1.vel_x = 0;
			BoxGuy1.x = 0x100;
		}
		else if(BoxGuy1.x < 0x400) { // don't want to wrap around to the other side
			BoxGuy1.vel_x = -0x100;
		}
		else {  
			BoxGuy1.vel_x -= ACCEL;
			if(BoxGuy1.vel_x < -MAX_SPEED) BoxGuy1.vel_x = -MAX_SPEED;
		}
	}
	else if (pad1 & PAD_RIGHT){
		
		direction = RIGHT; 
		if(BoxGuy1.x >= 0xF000) {
			BoxGuy1.vel_x = 0;
			BoxGuy1.x = 0xF000;  
		} else {
			BoxGuy1.vel_x += ACCEL;
		if(BoxGuy1.vel_x > MAX_SPEED) BoxGuy1.vel_x = MAX_SPEED;
		}
		
	}
	else if (pad1 & PAD_UP){
		bg_check_climbable();
		if(climbable){
			BoxGuy1.y -= 0x100;
			// if(BoxGuy1.vel_y < -MAX_SPEED) BoxGuy1.vel_y = -MAX_SPEED;
		}
	}
	else if (pad1 & PAD_DOWN){
		bg_check_climbable();
		if(climbable){
			BoxGuy1.y += 0x100;
			// BoxGuy1.vel_y += ACCEL;
			// if(BoxGuy1.vel_y > MAX_SPEED) BoxGuy1.vel_y = MAX_SPEED;
		}
	}
	else { // nothing pressed
		if(BoxGuy1.vel_x >= 0x100) BoxGuy1.vel_x -= ACCEL;
		else if(BoxGuy1.vel_x < -0x100) BoxGuy1.vel_x += ACCEL;
		else BoxGuy1.vel_x = 0;
	}
	
	BoxGuy1.x += BoxGuy1.vel_x;
	
	if(BoxGuy1.x > 0xf800) { // make sure no wrap around to the other side
		BoxGuy1.x = 0x100;
		BoxGuy1.vel_x = 0;
	} 
	
	Generic.x = high_byte(BoxGuy1.x); // this is much faster than passing a pointer to BoxGuy1
	Generic.y = high_byte(BoxGuy1.y);
	Generic.width = HERO_WIDTH;
	Generic.height = HERO_HEIGHT;
	bg_collision();
	if(collision_R && collision_L){ // if both true, probably half stuck in a wall
		BoxGuy1.x = old_x;
		BoxGuy1.vel_x = 0;
	}
	else if(collision_L) {
		BoxGuy1.vel_x = 0;
		high_byte(BoxGuy1.x) = high_byte(BoxGuy1.x) - eject_L;
		
	}
	else if(collision_R) {
		BoxGuy1.vel_x = 0;
		high_byte(BoxGuy1.x) = high_byte(BoxGuy1.x) - eject_R;
	} 


	
// handle y

	// gravity
	bg_check_climbable();
	if(climbable == 0){ //gravity is ignored on climbables
		// BoxGuy1.vel_y is signed
		if(BoxGuy1.vel_y < 0x300){
			BoxGuy1.vel_y += GRAVITY;
		}
		else{
			BoxGuy1.vel_y = 0x300; // consistent
		}
		BoxGuy1.y += BoxGuy1.vel_y;
	}
	Generic.x = high_byte(BoxGuy1.x); // the rest should be the same
	Generic.y = high_byte(BoxGuy1.y);
	bg_collision();
	
	if(collision_U) {
		high_byte(BoxGuy1.y) = high_byte(BoxGuy1.y) - eject_U;
		BoxGuy1.vel_y = 0;
	}
	else if(collision_D) {
		high_byte(BoxGuy1.y) = high_byte(BoxGuy1.y) - eject_D;
		BoxGuy1.y &= 0xff00;
		if(BoxGuy1.vel_y > 0) {
			BoxGuy1.vel_y = 0;
		}
	}


	// check collision down a little lower than hero
	Generic.y = high_byte(BoxGuy1.y); // the rest should be the same
	bg_check_low();
	if(collision_D) {
		if(pad1_new & PAD_A) {
			BoxGuy1.vel_y = JUMP_VEL; // JUMP
		}
		
	}
	
	// do we need to load a new collision map? (scrolled into a new room)
	// if((scroll_x & 0xff) < 4){
	// 	new_cmap();
	// }

	
}	

void bg_collision(void){
	// note, uses bits in the metatile data to determine collision
	// sprite collision with backgrounds
	// load the object's x,y,width,height to Generic, then call this
	

	collision_L = 0;
	collision_R = 0;
	collision_U = 0;
	collision_D = 0;
	
	if(Generic.y >= 0xf0) return;
	
	temp6 = temp5 = Generic.x; // upper left (temp6 = save for reuse)
	temp1 = temp5 & 0xff; // low byte x
	temp2 = temp5 >> 8; // high byte x
	
	eject_L = temp1 | 0xf0;
	
	temp3 = Generic.y; // y top
	
	eject_U = temp3 | 0xf0;
	
	bg_collision_sub();
	
	if(collision & COL_ALL){ // find a corner in the collision map
		++collision_L;
		++collision_U;
	}
	
	// upper right
	temp5 += Generic.width;
	temp1 = temp5 & 0xff; // low byte x
	temp2 = temp5 >> 8; // high byte x
	
	eject_R = (temp1 + 1) & 0x0f;
	
	// temp3 is unchanged
	bg_collision_sub();
	
	if(collision & COL_ALL){ // find a corner in the collision map
		++collision_R;
		++collision_U;
	}
	
	
	// again, lower
	
	// bottom right, x hasn't changed

	temp3 = Generic.y + Generic.height; //y bottom
	eject_D = (temp3 + 1) & 0x0f;
	if(temp3 >= 0xf0) return;
	
	bg_collision_sub();
	
	if(collision & COL_ALL){ // find a corner in the collision map
		++collision_R;
	}
	if(collision & (COL_DOWN|COL_ALL)){ // find a corner in the collision map
		++collision_D;
	}
	
	// bottom left
	temp1 = temp6 & 0xff; // low byte x
	temp2 = temp6 >> 8; // high byte x
	
	//temp3, y is unchanged

	bg_collision_sub();
	
	if(collision & COL_ALL){ // find a corner in the collision map
		++collision_L;
	}
	if(collision & (COL_DOWN|COL_ALL)){ // find a corner in the collision map
		++collision_D;
	}

	if((temp3 & 0x0f) > 3) collision_D = 0; // for platforms, only collide with the top 3 pixels

}



void bg_collision_sub(void){
	coordinates = (temp1 >> 4) + (temp3 & 0xf0);
	
	map = temp2&1; // high byte
	if(!map){
		collision = c_map[coordinates];
	}
	else{
		collision = c_map2[coordinates];
	}
	
	collision = is_solid[collision];
}

void bg_check_climbable(void){
	coordinates = (temp1 >> 4) + (temp3 & 0xf0);
	
	climbable = c_map[coordinates];
	
	climbable = is_climbable[climbable];
}


void bg_check_low(void){

	// floor collisions
	collision_D = 0;
	
	temp5 = Generic.x;   //left
	temp1 = temp5 & 0xff; //low byte
	temp2 = temp5 >> 8; //high byte
	
	temp3 = Generic.y + Generic.height + 1; // bottom
	
	if(temp3 >= 0xf0) return;
	
	bg_collision_sub();
	
	if(collision & (COL_DOWN|COL_ALL)){ // find a corner in the collision map
		++collision_D;
	}
	
	
	//temp5 = right
	temp5 += Generic.width;
	temp1 = temp5 & 0xff; //low byte
	temp2 = temp5 >> 8; //high byte
	
	//temp3 is unchanged
	bg_collision_sub();
	
	if(collision & (COL_DOWN|COL_ALL)){ // find a corner in the collision map
		++collision_D;
	}
	
	if((temp3 & 0x0f) > 3) collision_D = 0; // for platforms, only collide with the top 3 pixels

}
