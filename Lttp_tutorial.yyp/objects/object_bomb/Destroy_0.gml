var _image_speed = 1;
var _has_depth = true;

var _explosion = create_animation_effect(
	sprite_explosion_effect,
	x,
	y,
	_image_speed,
	_has_depth
);

var _angle = 0;
var _frames_til_destroy = 3;
var _target_list = [object_grass, object_enemy_parent, object_player];
var _damage = 2;
var _knockback = 12;

create_hitbox(
	sprite_bomb_hitbox,
	x,
	y - 4,
	_angle,
	_frames_til_destroy,
	_target_list,
	_damage,
	_knockback
);

audio_play_sound(sound_explosion, 7, false);