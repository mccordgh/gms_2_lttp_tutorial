depth = -y;

if health_ <= 0 and state_ != enemy.hit {
	instance_destroy();
}

if (state_ != noone) {
	event_user(state_);
}