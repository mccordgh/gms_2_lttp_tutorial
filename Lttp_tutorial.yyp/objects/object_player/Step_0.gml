zh_ = z_ + height_;
depth_y_zh_ = -y + zh_;

depth = min(depth_y_zh_, jumpable_depth_);

event_user(state_);

sprite_index = sprite_[state_, direction_facing_];

if (global.player_health <= 0 and !invincible_) {
	instance_destroy();
	game_end();
}
