depth = -y
up = keyboard_check(vk_up)or keyboard_check(ord("W"))
down = keyboard_check(vk_down)or keyboard_check(ord("S"))
left = keyboard_check(vk_left)or keyboard_check(ord("A"))
right = keyboard_check(vk_right)or keyboard_check(ord("D"))
aim = mouse_check_button_pressed(mb_right)
aim_cancel = not mouse_check_button(mb_right)
shoot = mouse_check_button(mb_left)



//up
if(up)and !place_meeting(x, y-walk_spd, obj_solid){
	y-=walk_spd*.75		
	sprite_index = spr_player_up
}
//down
if(down)and !place_meeting(x, y+walk_spd, obj_solid){
	y+=walk_spd*.75	
	sprite_index = spr_player_down
}
//left
if(left)and !place_meeting(x-walk_spd, y, obj_solid){
	x-=walk_spd	
	sprite_index = spr_player_left
}
//right
if(right)and !place_meeting(x+walk_spd, y, obj_solid){
	x+=walk_spd	
	sprite_index = spr_player_right
}
//if not moving then stand still
if(!right)and(!left)and(!up)and(!down){
image_index = 0
}
