depth = -y;

if health_ <= 0 and state_ != enemy.hit {
	instance_destroy();
	
	if (drop_chance(.25) and global.player_health < global.player_max_health) {
		instance_create_layer(x, y, "Instances", object_heart_pickup);
	}
}

if (state_ != noone) {
	event_user(state_);
}