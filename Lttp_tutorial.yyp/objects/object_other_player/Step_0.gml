depth = -y;

event_user(state_);

sprite_index = sprite_[state_, direction_facing_];

if (health_ <= 0 and !invincible_) {
	global.other_players[other_index_] = noone;
	instance_destroy();
}
