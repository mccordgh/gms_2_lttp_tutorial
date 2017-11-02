if (instance_exists(global.player_start_position)) {
	if (instance_exists(object_player)) {
		object_player.persistent = false;
		object_player.x = global.player_start_position.x;
		object_player.y = global.player_start_position.y;
		object_player.layer = layer_get_id("Instances");
	} else {
		var _start_x = global.player_start_position.x;
		var _start_y = global.player_start_position.y;
		instance_create_layer(_start_x, _start_y, "Instances", object_player);
	}
	
	global.player_start_position = noone;
}