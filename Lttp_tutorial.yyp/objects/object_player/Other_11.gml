/// @description Sword State

image_speed = 0.8;

if (animation_hit_frame(1)) {
	var _angle = direction_facing_ * 90
	var _frames_til_destroy = 3;
	var _damage = 1;
	var _knockback = 8;
	var _targets = [];
	var _hitbox = create_hitbox(sprite_sword_hitbox, x, y, _angle, _frames_til_destroy, _targets, _damage, _knockback);	

	switch (direction_facing_) {
		case dir.up:
			_hitbox.y -= 4;
			break;
		default:
			_hitbox.y -= 8;
			break;
	}
}

if (animation_hit_frame(image_number - 1)) {
	state_ = player.move;	
}
