/// @description Attack State
image_speed = 0.35;

if (animation_hit_frame(0)) {
	var _damage = 1;
	var _knockback = 4;
	var _frames_til_destroy = 1;
	var _targets = [object_player, object_other_player];
	create_hitbox(sprite_porcupine_hitbox, x, y - 4, 0, _frames_til_destroy, _targets, _damage, _knockback);
	audio_play_sound(sound_porcupine_attack, 5, false);
}

if (animation_hit_frame(image_number - 1)) {
	state_ = porcupine.move;
	sprite_index = sprite_porcupine_run;
	alarm[1] = 2 * global.one_second;
}