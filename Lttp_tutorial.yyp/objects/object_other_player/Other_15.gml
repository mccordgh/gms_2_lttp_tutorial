/// @description Found Item State

if (alarm[2]) {
	exit;
}

invincible_ = true;

image_index = 0;
direction_facing_ =  dir.down;

alarm[2] = global.one_second * 2;
