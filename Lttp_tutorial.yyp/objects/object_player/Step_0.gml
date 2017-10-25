image_speed = 0;

if (keyboard_check(vk_right) and not place_meeting(x + 2, y, object_solid)) {
	sprite_index = sprite_player_run_right;
	image_xscale = 1;
	image_speed = .6;
	x += 2;
}

if (keyboard_check(vk_left) and not place_meeting(x - 2, y, object_solid)) {
	sprite_index = sprite_player_run_right;
	image_xscale = -1;
	image_speed = .6;
	x -= 2;
}

if (keyboard_check(vk_up) and not place_meeting(x, y - 2, object_solid)) {
	sprite_index = sprite_player_run_up;
	image_speed = .6;
	y -= 2;
}

if (keyboard_check(vk_down) and not place_meeting(x, y + 2, object_solid)) {
	sprite_index = sprite_player_run_down;
	image_speed = .6;
	y += 2;
}

