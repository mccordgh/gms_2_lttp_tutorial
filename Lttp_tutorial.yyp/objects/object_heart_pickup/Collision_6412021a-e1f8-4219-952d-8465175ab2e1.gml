if (not can_pickup_ or global.player_health >= global.player_max_health) {
	exit;
}

event_user(PICKED_UP);