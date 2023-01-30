/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_left)){
	image_angle += 5;
}

if (keyboard_check(vk_right)){
	image_angle -= 5;
}

if(keyboard_check(vk_up)){
	motion_add(image_angle, .05);
}

if(keyboard_check_pressed(vk_space)){
	var inst1 = instance_create_layer(x,y, "Instances", obj_bullet);
	inst1.direction = image_angle;
	inst1.y = y + 22
	var inst2 = instance_create_layer(x,y, "Instances", obj_bullet);
	inst2.direction = image_angle;
	inst2.y = (y - 22)
}

move_wrap(true,true,sprite_width/2);