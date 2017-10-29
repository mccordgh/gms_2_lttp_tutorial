/// @description Attack State

if (animation_hit_frame(3)) {
	var _damage = 1;
	var _knockback = 4;
	var _frames_til_destroy = 1;
	create_hitbox(sprite_porcupine_hitbox, x, y - 8, 0, _frames_til_destroy, [], _damage, _knockback);
}

if (animation_hit_frame(image_number - 1)) {
	state_ = porcupine.move;
	sprite_index = sprite_porcupine_run;
	alarm[1] = 2 * game_get_speed(gamespeed_fps);
}