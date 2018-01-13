zh_ = z_ + height_;

depth = -y + zh_ + depth_offset_;

event_user(state_);

sprite_index = sprite_[state_, direction_facing_];

if (global.player_health <= 0 and !invincible_) {
	instance_destroy();
	game_end();
}
