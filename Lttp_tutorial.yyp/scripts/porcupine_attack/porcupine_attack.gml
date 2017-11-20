if (not instance_exists(object_player)) exit;

// check if player is nearby and attack if so
var _distance_to_player = point_distance(x, y, object_player.x, object_player.y);

if (_distance_to_player < 13) {
	state_ = porcupine.attack;
	image_index = 0;
	sprite_index = sprite_porcupine_attack;
}

// now check if other players nearby 
for (var i = 0; i < global.other_player_count; i++) {
	if (instance_exists(global.other_players[i])) {
		var _distance_to_player = point_distance(
			x,
			y,
			global.other_players[i].x,
			global.other_players[i].y
			);
				
		if (_distance_to_player < 13) {
			state_ = porcupine.attack;
			image_index = 0;
			sprite_index = sprite_porcupine_attack;
		}
	}
}