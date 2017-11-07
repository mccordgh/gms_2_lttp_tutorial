if (not instance_exists(object_player)) exit;

var _distance_to_player = point_distance(x, y, object_player.x, object_player.y);

if (_distance_to_player < 13) {
	state_ = porcupine.attack;
	image_index = 0;
	sprite_index = sprite_porcupine_attack;
}