;
; File generated by cc65 v 2.18 - N/A
;
	.fopt		compiler,"cc65 v 2.18 - N/A"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_pal_bg
	.import		_pal_spr
	.import		_ppu_wait_nmi
	.import		_ppu_off
	.import		_ppu_on_all
	.import		_oam_clear
	.import		_oam_meta_spr
	.import		_pad_poll
	.import		_bank_spr
	.import		_memcpy
	.import		_set_vram_buffer
	.import		_get_pad_new
	.import		_get_ppu_addr
	.import		_set_data_pointer
	.import		_set_mt_pointer
	.import		_buffer_4_mt
	.import		_flush_vram_update2
	.export		_PlayerOneL
	.export		_PlayerOneR
	.export		_pad1
	.export		_pad1_new
	.export		_collision
	.export		_collision_L
	.export		_collision_R
	.export		_collision_U
	.export		_collision_D
	.export		_coordinates
	.export		_temp1
	.export		_temp2
	.export		_temp3
	.export		_temp4
	.export		_temp5
	.export		_temp6
	.export		_eject_L
	.export		_eject_R
	.export		_eject_D
	.export		_eject_U
	.export		_direction
	.export		_address
	.export		_x
	.export		_y
	.export		_nt
	.export		_index
	.export		_room
	.export		_map
	.export		_old_x
	.export		_c_map
	.export		_c_map2
	.export		_Generic
	.export		_BoxGuy1
	.export		_palette_bg
	.export		_palette_sp
	.export		_metatiles1
	.export		_is_solid
	.export		_Room1
	.export		_Room2
	.export		_Room3
	.export		_Room4
	.export		_Room5
	.export		_Rooms
	.export		_load_room
	.export		_draw_sprites
	.export		_movement
	.export		_bg_collision
	.export		_bg_collision_sub
	.export		_bg_check_low
	.export		_main

.segment	"DATA"

_BoxGuy1:
	.word	$4000
	.word	$A400
	.res	4,$00

.segment	"RODATA"

_PlayerOneL:
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$10
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$11
	.byte	$00
	.byte	$00
	.byte	$10
	.byte	$20
	.byte	$00
	.byte	$08
	.byte	$10
	.byte	$21
	.byte	$00
	.byte	$80
_PlayerOneR:
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$10
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$11
	.byte	$00
	.byte	$00
	.byte	$10
	.byte	$20
	.byte	$00
	.byte	$08
	.byte	$10
	.byte	$21
	.byte	$00
	.byte	$80
_palette_bg:
	.byte	$00
	.byte	$16
	.byte	$07
	.byte	$08
	.byte	$00
	.byte	$16
	.byte	$07
	.byte	$08
	.byte	$00
	.byte	$16
	.byte	$07
	.byte	$08
	.byte	$00
	.byte	$16
	.byte	$07
	.byte	$08
_palette_sp:
	.byte	$28
	.byte	$06
	.byte	$36
	.byte	$30
	.byte	$28
	.byte	$06
	.byte	$36
	.byte	$30
	.byte	$28
	.byte	$06
	.byte	$36
	.byte	$30
	.byte	$28
	.byte	$06
	.byte	$36
	.byte	$30
_metatiles1:
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$03
	.byte	$03
	.byte	$03
	.byte	$00
	.byte	$05
	.byte	$05
	.byte	$05
	.byte	$05
	.byte	$00
	.byte	$06
	.byte	$06
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$07
	.byte	$07
	.byte	$00
	.byte	$06
	.byte	$06
	.byte	$05
	.byte	$05
	.byte	$00
	.byte	$05
	.byte	$05
	.byte	$07
	.byte	$07
	.byte	$00
_is_solid:
	.byte	$00
	.byte	$80
	.byte	$C0
	.byte	$80
	.byte	$80
	.byte	$80
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
_Room1:
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$06
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$04
	.byte	$04
	.byte	$06
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$06
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
_Room2:
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$05
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$06
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$08
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$04
	.byte	$05
	.byte	$0A
	.byte	$0A
	.byte	$0B
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
_Room3:
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$04
	.byte	$02
	.byte	$02
	.byte	$04
	.byte	$04
	.byte	$05
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$06
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$02
	.byte	$07
	.byte	$08
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$04
	.byte	$06
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$02
	.byte	$07
	.byte	$08
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$09
	.byte	$0A
	.byte	$06
	.byte	$07
	.byte	$02
	.byte	$02
	.byte	$07
	.byte	$07
	.byte	$08
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
_Room4:
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$02
	.byte	$04
	.byte	$04
	.byte	$05
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$06
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$02
	.byte	$07
	.byte	$07
	.byte	$08
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$09
	.byte	$0A
	.byte	$0A
	.byte	$0A
	.byte	$0A
	.byte	$0A
	.byte	$0A
	.byte	$0B
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
_Room5:
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$05
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$06
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$08
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$05
	.byte	$07
	.byte	$08
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$06
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$08
	.byte	$0A
	.byte	$0B
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
_Rooms:
	.addr	_Room1
	.addr	_Room2
	.addr	_Room3
	.addr	_Room4
	.addr	_Room5

.segment	"BSS"

.segment	"ZEROPAGE"
_pad1:
	.res	1,$00
_pad1_new:
	.res	1,$00
_collision:
	.res	1,$00
_collision_L:
	.res	1,$00
_collision_R:
	.res	1,$00
_collision_U:
	.res	1,$00
_collision_D:
	.res	1,$00
_coordinates:
	.res	1,$00
_temp1:
	.res	1,$00
_temp2:
	.res	1,$00
_temp3:
	.res	1,$00
_temp4:
	.res	1,$00
_temp5:
	.res	2,$00
_temp6:
	.res	2,$00
_eject_L:
	.res	1,$00
_eject_R:
	.res	1,$00
_eject_D:
	.res	1,$00
_eject_U:
	.res	1,$00
_direction:
	.res	1,$00
_address:
	.res	2,$00
_x:
	.res	1,$00
_y:
	.res	1,$00
_nt:
	.res	1,$00
_index:
	.res	1,$00
_room:
	.res	1,$00
_map:
	.res	1,$00
_old_x:
	.res	2,$00
.segment	"BSS"
_c_map:
	.res	240,$00
_c_map2:
	.res	240,$00
_Generic:
	.res	4,$00

; ---------------------------------------------------------------
; void __near__ load_room (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_load_room: near

.segment	"CODE"

;
; set_data_pointer(Rooms[0]);
;
	lda     _Rooms
	ldx     _Rooms+1
	jsr     _set_data_pointer
;
; set_mt_pointer(metatiles1);
;
	lda     #<(_metatiles1)
	ldx     #>(_metatiles1)
	jsr     _set_mt_pointer
;
; for(y=0; ;y+=0x20){
;
	lda     #$00
L06BC:	sta     _y
;
; for(x=0; ;x+=0x20){
;
	lda     #$00
L06BB:	sta     _x
;
; address = get_ppu_addr(0, x, y);
;
	jsr     decsp2
	lda     #$00
	ldy     #$01
	sta     (sp),y
	lda     _x
	dey
	sta     (sp),y
	lda     _y
	jsr     _get_ppu_addr
	sta     _address
	stx     _address+1
;
; index = (y & 0xf0) + (x >> 4);
;
	lda     _y
	and     #$F0
	sta     ptr1
	lda     _x
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     ptr1
	sta     _index
;
; buffer_4_mt(address, index); // ppu_address, index to the data
;
	lda     _address
	ldx     _address+1
	jsr     pushax
	lda     _index
	jsr     _buffer_4_mt
;
; flush_vram_update2();
;
	jsr     _flush_vram_update2
;
; if (x == 0xe0) break;
;
	lda     _x
	cmp     #$E0
	beq     L06BD
;
; for(x=0; ;x+=0x20){
;
	lda     #$20
	clc
	adc     _x
	jmp     L06BB
;
; if (y == 0xe0) break;
;
L06BD:	lda     _y
	cmp     #$E0
	beq     L055C
;
; for(y=0; ;y+=0x20){
;
	lda     #$20
	clc
	adc     _y
	jmp     L06BC
;
; memcpy (c_map, Rooms[0], 240);
;
L055C:	lda     #<(_c_map)
	ldx     #>(_c_map)
	jsr     pushax
	lda     _Rooms
	ldx     _Rooms+1
	jsr     pushax
	ldx     #$00
	lda     #$F0
	jmp     _memcpy

.endproc

; ---------------------------------------------------------------
; void __near__ draw_sprites (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_draw_sprites: near

.segment	"CODE"

;
; oam_clear();
;
	jsr     _oam_clear
;
; if(direction == LEFT) {
;
	lda     _direction
	bne     L0583
;
; oam_meta_spr(high_byte(BoxGuy1.x), high_byte(BoxGuy1.y)-8, PlayerOneL);
;
	jsr     decsp2
	lda     _BoxGuy1+1
	ldy     #$01
	sta     (sp),y
	lda     _BoxGuy1+3
	sec
	sbc     #$08
	dey
	sta     (sp),y
	lda     #<(_PlayerOneL)
	ldx     #>(_PlayerOneL)
	jmp     _oam_meta_spr
;
; oam_meta_spr(high_byte(BoxGuy1.x), high_byte(BoxGuy1.y)-8, PlayerOneR);
;
L0583:	jsr     decsp2
	lda     _BoxGuy1+1
	ldy     #$01
	sta     (sp),y
	lda     _BoxGuy1+3
	sec
	sbc     #$08
	dey
	sta     (sp),y
	lda     #<(_PlayerOneR)
	ldx     #>(_PlayerOneR)
	jmp     _oam_meta_spr

.endproc

; ---------------------------------------------------------------
; void __near__ movement (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_movement: near

.segment	"CODE"

;
; old_x = BoxGuy1.x;
;
	lda     _BoxGuy1+1
	sta     _old_x+1
	lda     _BoxGuy1
	sta     _old_x
;
; if(pad1 & PAD_LEFT){
;
	lda     _pad1
	and     #$02
	beq     L06C1
;
; direction = LEFT;
;
	lda     #$00
	sta     _direction
;
; if(BoxGuy1.x <= 0x100) {
;
	lda     _BoxGuy1+1
	cmp     #$01
	bne     L059D
	lda     _BoxGuy1
	cmp     #$01
L059D:	bcs     L059B
;
; BoxGuy1.vel_x = 0;
;
	lda     #$00
	sta     _BoxGuy1+4
	sta     _BoxGuy1+4+1
;
; BoxGuy1.x = 0x100;
;
	ldx     #$01
	sta     _BoxGuy1
	stx     _BoxGuy1+1
;
; else if(BoxGuy1.x < 0x400) { // don't want to wrap around to the other side
;
	jmp     L05D2
L059B:	ldx     _BoxGuy1+1
	cpx     #$04
	bcs     L05A3
;
; BoxGuy1.vel_x = -0x100;
;
	ldx     #$FF
	lda     #$00
;
; else {  
;
	jmp     L06C3
;
; BoxGuy1.vel_x -= ACCEL;
;
L05A3:	lda     _BoxGuy1+4
	sec
	sbc     #$20
	sta     _BoxGuy1+4
	bcs     L05AA
	dec     _BoxGuy1+4+1
;
; if(BoxGuy1.vel_x < -MAX_SPEED) BoxGuy1.vel_x = -MAX_SPEED;
;
L05AA:	lda     _BoxGuy1+4
	cmp     #$C0
	lda     _BoxGuy1+4+1
	sbc     #$FD
	bvc     L05AD
	eor     #$80
L05AD:	jpl     L05D2
	ldx     #$FD
	lda     #$C0
;
; else if (pad1 & PAD_RIGHT){
;
	jmp     L06C3
L06C1:	lda     _pad1
	and     #$01
	beq     L05B1
;
; direction = RIGHT; 
;
	lda     #$01
	sta     _direction
;
; if(BoxGuy1.x >= 0xF000) {
;
	lda     _BoxGuy1
	cmp     #$00
	lda     _BoxGuy1+1
	sbc     #$F0
	bcc     L05B5
;
; BoxGuy1.vel_x = 0;
;
	lda     #$00
	sta     _BoxGuy1+4
	sta     _BoxGuy1+4+1
;
; BoxGuy1.x = 0xF000;  
;
	ldx     #$F0
	sta     _BoxGuy1
	stx     _BoxGuy1+1
;
; } else {
;
	jmp     L05D2
;
; BoxGuy1.vel_x += ACCEL;
;
L05B5:	lda     #$20
	clc
	adc     _BoxGuy1+4
	sta     _BoxGuy1+4
	bcc     L05BE
	inc     _BoxGuy1+4+1
;
; if(BoxGuy1.vel_x > MAX_SPEED) BoxGuy1.vel_x = MAX_SPEED;
;
L05BE:	lda     _BoxGuy1+4
	cmp     #$41
	lda     _BoxGuy1+4+1
	sbc     #$02
	bvs     L05C1
	eor     #$80
L05C1:	bpl     L05D2
	ldx     #$02
	lda     #$40
;
; else { // nothing pressed
;
	jmp     L06C3
;
; if(BoxGuy1.vel_x >= 0x100) BoxGuy1.vel_x -= ACCEL;
;
L05B1:	lda     _BoxGuy1+4
	cmp     #$00
	lda     _BoxGuy1+4+1
	sbc     #$01
	bvs     L05C7
	eor     #$80
L05C7:	bpl     L05C5
	lda     _BoxGuy1+4
	sec
	sbc     #$20
	sta     _BoxGuy1+4
	bcs     L05D2
	dec     _BoxGuy1+4+1
;
; else if(BoxGuy1.vel_x < -0x100) BoxGuy1.vel_x += ACCEL;
;
	jmp     L05D2
L05C5:	lda     _BoxGuy1+4
	cmp     #$00
	lda     _BoxGuy1+4+1
	sbc     #$FF
	bvc     L05CE
	eor     #$80
L05CE:	asl     a
	lda     #$00
	tax
	bcc     L06C3
	lda     #$20
	clc
	adc     _BoxGuy1+4
	sta     _BoxGuy1+4
	bcc     L05D2
	inc     _BoxGuy1+4+1
;
; else BoxGuy1.vel_x = 0;
;
	jmp     L05D2
L06C3:	sta     _BoxGuy1+4
	stx     _BoxGuy1+4+1
;
; BoxGuy1.x += BoxGuy1.vel_x;
;
L05D2:	lda     _BoxGuy1+4
	clc
	adc     _BoxGuy1
	sta     _BoxGuy1
	lda     _BoxGuy1+4+1
	adc     _BoxGuy1+1
	sta     _BoxGuy1+1
;
; if(BoxGuy1.x > 0xf800) { // make sure no wrap around to the other side
;
	lda     _BoxGuy1
	cmp     #$01
	lda     _BoxGuy1+1
	sbc     #$F8
	bcc     L06C4
;
; BoxGuy1.x = 0x100;
;
	ldx     #$01
	lda     #$00
	sta     _BoxGuy1
	stx     _BoxGuy1+1
;
; BoxGuy1.vel_x = 0;
;
	sta     _BoxGuy1+4
	sta     _BoxGuy1+4+1
;
; Generic.x = high_byte(BoxGuy1.x); // this is much faster than passing a pointer to BoxGuy1
;
L06C4:	lda     _BoxGuy1+1
	sta     _Generic
;
; Generic.y = high_byte(BoxGuy1.y);
;
	lda     _BoxGuy1+3
	sta     _Generic+1
;
; Generic.width = HERO_WIDTH;
;
	lda     #$0D
	sta     _Generic+2
;
; Generic.height = HERO_HEIGHT;
;
	lda     #$0B
	sta     _Generic+3
;
; bg_collision();
;
	jsr     _bg_collision
;
; if(collision_R && collision_L){ // if both true, probably half stuck in a wall
;
	lda     _collision_R
	beq     L05E8
	lda     _collision_L
	beq     L05E8
;
; BoxGuy1.x = old_x;
;
	lda     _old_x+1
	sta     _BoxGuy1+1
	lda     _old_x
	sta     _BoxGuy1
;
; BoxGuy1.vel_x = 0;
;
	lda     #$00
	sta     _BoxGuy1+4
	sta     _BoxGuy1+4+1
;
; else if(collision_L) {
;
	jmp     L05FA
L05E8:	lda     _collision_L
	beq     L05F1
;
; BoxGuy1.vel_x = 0;
;
	lda     #$00
	sta     _BoxGuy1+4
	sta     _BoxGuy1+4+1
;
; high_byte(BoxGuy1.x) = high_byte(BoxGuy1.x) - eject_L;
;
	lda     _BoxGuy1+1
	sec
	sbc     _eject_L
;
; else if(collision_R) {
;
	jmp     L06C8
L05F1:	lda     _collision_R
	beq     L05FA
;
; BoxGuy1.vel_x = 0;
;
	lda     #$00
	sta     _BoxGuy1+4
	sta     _BoxGuy1+4+1
;
; high_byte(BoxGuy1.x) = high_byte(BoxGuy1.x) - eject_R;
;
	lda     _BoxGuy1+1
	sec
	sbc     _eject_R
L06C8:	sta     _BoxGuy1+1
;
; if(BoxGuy1.vel_y < 0x300){
;
L05FA:	lda     _BoxGuy1+6
	cmp     #$00
	lda     _BoxGuy1+6+1
	sbc     #$03
	bvc     L0604
	eor     #$80
L0604:	bpl     L0602
;
; BoxGuy1.vel_y += GRAVITY;
;
	lda     #$50
	clc
	adc     _BoxGuy1+6
	sta     _BoxGuy1+6
	bcc     L0608
	inc     _BoxGuy1+6+1
;
; else{
;
	jmp     L0608
;
; BoxGuy1.vel_y = 0x300; // consistent
;
L0602:	ldx     #$03
	lda     #$00
	sta     _BoxGuy1+6
	stx     _BoxGuy1+6+1
;
; BoxGuy1.y += BoxGuy1.vel_y;
;
L0608:	lda     _BoxGuy1+6
	clc
	adc     _BoxGuy1+2
	sta     _BoxGuy1+2
	lda     _BoxGuy1+6+1
	adc     _BoxGuy1+2+1
	sta     _BoxGuy1+2+1
;
; Generic.x = high_byte(BoxGuy1.x); // the rest should be the same
;
	lda     _BoxGuy1+1
	sta     _Generic
;
; Generic.y = high_byte(BoxGuy1.y);
;
	lda     _BoxGuy1+3
	sta     _Generic+1
;
; bg_collision();
;
	jsr     _bg_collision
;
; if(collision_U) {
;
	lda     _collision_U
	beq     L0614
;
; high_byte(BoxGuy1.y) = high_byte(BoxGuy1.y) - eject_U;
;
	lda     _BoxGuy1+3
	sec
	sbc     _eject_U
	sta     _BoxGuy1+3
;
; else if(collision_D) {
;
	jmp     L06C9
L0614:	lda     _collision_D
	beq     L06C5
;
; high_byte(BoxGuy1.y) = high_byte(BoxGuy1.y) - eject_D;
;
	lda     _BoxGuy1+3
	sec
	sbc     _eject_D
	sta     _BoxGuy1+3
;
; BoxGuy1.y &= 0xff00;
;
	ldx     _BoxGuy1+2+1
	lda     #$00
	sta     _BoxGuy1+2
	stx     _BoxGuy1+2+1
;
; if(BoxGuy1.vel_y > 0) {
;
	lda     _BoxGuy1+6
	cmp     #$01
	lda     _BoxGuy1+6+1
	sbc     #$00
	bvs     L0627
	eor     #$80
L0627:	bpl     L06C5
;
; BoxGuy1.vel_y = 0;
;
L06C9:	lda     #$00
	sta     _BoxGuy1+6
	sta     _BoxGuy1+6+1
;
; Generic.y = high_byte(BoxGuy1.y); // the rest should be the same
;
L06C5:	lda     _BoxGuy1+3
	sta     _Generic+1
;
; bg_check_low();
;
	jsr     _bg_check_low
;
; if(collision_D) {
;
	lda     _collision_D
	beq     L0630
;
; if(pad1_new & PAD_A) {
;
	lda     _pad1_new
	and     #$80
	beq     L0630
;
; BoxGuy1.vel_y = JUMP_VEL; // JUMP
;
	ldx     #$FA
	lda     #$00
	sta     _BoxGuy1+6
	stx     _BoxGuy1+6+1
;
; } 
;
L0630:	rts

.endproc

; ---------------------------------------------------------------
; void __near__ bg_collision (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_bg_collision: near

.segment	"CODE"

;
; collision_L = 0;
;
	lda     #$00
	sta     _collision_L
;
; collision_R = 0;
;
	sta     _collision_R
;
; collision_U = 0;
;
	sta     _collision_U
;
; collision_D = 0;
;
	sta     _collision_D
;
; if(Generic.y >= 0xf0) return;
;
	lda     _Generic+1
	cmp     #$F0
	bcc     L06D0
;
; }
;
	rts
;
; temp6 = temp5 = Generic.x; // upper left (temp6 = save for reuse)
;
L06D0:	lda     _Generic
	ldx     #$00
	sta     _temp5
	stx     _temp5+1
	sta     _temp6
	stx     _temp6+1
;
; temp1 = temp5 & 0xff; // low byte x
;
	lda     _temp5
	sta     _temp1
;
; temp2 = temp5 >> 8; // high byte x
;
	lda     _temp5+1
	sta     _temp2
;
; eject_L = temp1 | 0xf0;
;
	lda     _temp1
	ora     #$F0
	sta     _eject_L
;
; temp3 = Generic.y; // y top
;
	lda     _Generic+1
	sta     _temp3
;
; eject_U = temp3 | 0xf0;
;
	ora     #$F0
	sta     _eject_U
;
; bg_collision_sub();
;
	jsr     _bg_collision_sub
;
; if(collision & COL_ALL){ // find a corner in the collision map
;
	lda     _collision
	and     #$40
	beq     L06CB
;
; ++collision_L;
;
	inc     _collision_L
;
; ++collision_U;
;
	inc     _collision_U
;
; temp5 += Generic.width;
;
L06CB:	lda     _Generic+2
	clc
	adc     _temp5
	sta     _temp5
	lda     #$00
	adc     _temp5+1
	sta     _temp5+1
;
; temp1 = temp5 & 0xff; // low byte x
;
	lda     _temp5
	sta     _temp1
;
; temp2 = temp5 >> 8; // high byte x
;
	lda     _temp5+1
	sta     _temp2
;
; eject_R = (temp1 + 1) & 0x0f;
;
	lda     _temp1
	clc
	adc     #$01
	and     #$0F
	sta     _eject_R
;
; bg_collision_sub();
;
	jsr     _bg_collision_sub
;
; if(collision & COL_ALL){ // find a corner in the collision map
;
	lda     _collision
	and     #$40
	beq     L06CC
;
; ++collision_R;
;
	inc     _collision_R
;
; ++collision_U;
;
	inc     _collision_U
;
; temp3 = Generic.y + Generic.height; //y bottom
;
L06CC:	lda     _Generic+1
	clc
	adc     _Generic+3
	sta     _temp3
;
; eject_D = (temp3 + 1) & 0x0f;
;
	clc
	adc     #$01
	and     #$0F
	sta     _eject_D
;
; if(temp3 >= 0xf0) return;
;
	lda     _temp3
	cmp     #$F0
	bcs     L067C
;
; bg_collision_sub();
;
	jsr     _bg_collision_sub
;
; if(collision & COL_ALL){ // find a corner in the collision map
;
	lda     _collision
	and     #$40
	beq     L06CD
;
; ++collision_R;
;
	inc     _collision_R
;
; if(collision & (COL_DOWN|COL_ALL)){ // find a corner in the collision map
;
L06CD:	lda     _collision
	and     #$C0
	beq     L066C
;
; ++collision_D;
;
	inc     _collision_D
;
; temp1 = temp6 & 0xff; // low byte x
;
L066C:	lda     _temp6
	sta     _temp1
;
; temp2 = temp6 >> 8; // high byte x
;
	lda     _temp6+1
	sta     _temp2
;
; bg_collision_sub();
;
	jsr     _bg_collision_sub
;
; if(collision & COL_ALL){ // find a corner in the collision map
;
	lda     _collision
	and     #$40
	beq     L06CE
;
; ++collision_L;
;
	inc     _collision_L
;
; if(collision & (COL_DOWN|COL_ALL)){ // find a corner in the collision map
;
L06CE:	lda     _collision
	and     #$C0
	beq     L06CF
;
; ++collision_D;
;
	inc     _collision_D
;
; if((temp3 & 0x0f) > 3) collision_D = 0; // for platforms, only collide with the top 3 pixels
;
L06CF:	lda     _temp3
	and     #$0F
	cmp     #$04
	bcc     L067C
	lda     #$00
	sta     _collision_D
;
; }
;
L067C:	rts

.endproc

; ---------------------------------------------------------------
; void __near__ bg_collision_sub (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_bg_collision_sub: near

.segment	"CODE"

;
; coordinates = (temp1 >> 4) + (temp3 & 0xf0);
;
	lda     _temp1
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	sta     ptr1
	lda     _temp3
	and     #$F0
	clc
	adc     ptr1
	sta     _coordinates
;
; map = temp2&1; // high byte
;
	lda     _temp2
	and     #$01
	sta     _map
;
; if(!map){
;
	lda     _map
	bne     L0688
;
; collision = c_map[coordinates];
;
	ldy     _coordinates
	lda     _c_map,y
;
; else{
;
	jmp     L06D1
;
; collision = c_map2[coordinates];
;
L0688:	ldy     _coordinates
	lda     _c_map2,y
L06D1:	sta     _collision
;
; collision = is_solid[collision];
;
	ldy     _collision
	lda     _is_solid,y
	sta     _collision
;
; }
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ bg_check_low (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_bg_check_low: near

.segment	"CODE"

;
; collision_D = 0;
;
	lda     #$00
	sta     _collision_D
;
; temp5 = Generic.x;   //left
;
	sta     _temp5+1
	lda     _Generic
	sta     _temp5
;
; temp1 = temp5 & 0xff; //low byte
;
	sta     _temp1
;
; temp2 = temp5 >> 8; //high byte
;
	lda     _temp5+1
	sta     _temp2
;
; temp3 = Generic.y + Generic.height + 1; // bottom
;
	lda     _Generic+1
	clc
	adc     _Generic+3
	bcc     L06D4
	clc
L06D4:	adc     #$01
	sta     _temp3
;
; if(temp3 >= 0xf0) return;
;
	cmp     #$F0
	bcs     L06B5
;
; bg_collision_sub();
;
	jsr     _bg_collision_sub
;
; if(collision & (COL_DOWN|COL_ALL)){ // find a corner in the collision map
;
	lda     _collision
	and     #$C0
	beq     L06D5
;
; ++collision_D;
;
	inc     _collision_D
;
; temp5 += Generic.width;
;
L06D5:	lda     _Generic+2
	clc
	adc     _temp5
	sta     _temp5
	lda     #$00
	adc     _temp5+1
	sta     _temp5+1
;
; temp1 = temp5 & 0xff; //low byte
;
	lda     _temp5
	sta     _temp1
;
; temp2 = temp5 >> 8; //high byte
;
	lda     _temp5+1
	sta     _temp2
;
; bg_collision_sub();
;
	jsr     _bg_collision_sub
;
; if(collision & (COL_DOWN|COL_ALL)){ // find a corner in the collision map
;
	lda     _collision
	and     #$C0
	beq     L06D6
;
; ++collision_D;
;
	inc     _collision_D
;
; if((temp3 & 0x0f) > 3) collision_D = 0; // for platforms, only collide with the top 3 pixels
;
L06D6:	lda     _temp3
	and     #$0F
	cmp     #$04
	bcc     L06B5
	lda     #$00
	sta     _collision_D
;
; }
;
L06B5:	rts

.endproc

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

;
; ppu_off(); // screen off
;
	jsr     _ppu_off
;
; pal_bg(palette_bg);
;
	lda     #<(_palette_bg)
	ldx     #>(_palette_bg)
	jsr     _pal_bg
;
; pal_spr(palette_sp);
;
	lda     #<(_palette_sp)
	ldx     #>(_palette_sp)
	jsr     _pal_spr
;
; bank_spr(1);
;
	lda     #$01
	jsr     _bank_spr
;
; set_vram_buffer(); // do at least once
;
	jsr     _set_vram_buffer
;
; load_room();
;
	jsr     _load_room
;
; ppu_on_all(); // turn on screen
;
	jsr     _ppu_on_all
;
; ppu_wait_nmi(); // wait till beginning of the frame
;
L0548:	jsr     _ppu_wait_nmi
;
; pad1 = pad_poll(0); // read the first controller
;
	lda     #$00
	jsr     _pad_poll
	sta     _pad1
;
; pad1_new = get_pad_new(0);
;
	lda     #$00
	jsr     _get_pad_new
	sta     _pad1_new
;
; movement();
;
	jsr     _movement
;
; draw_sprites();
;
	jsr     _draw_sprites
;
; while (1){
;
	jmp     L0548

.endproc

