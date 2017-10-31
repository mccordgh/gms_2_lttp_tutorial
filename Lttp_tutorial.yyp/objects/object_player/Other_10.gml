/// @description Move state

var _animation_speed = 0.6
var _x_input = object_input_manager.right_ - object_input_manager.left_;
var _y_input = object_input_manager.down_ - object_input_manager.up_;
var _input_direction = point_direction(0, 0, _x_input, _y_input);
var _attack_input = object_input_manager.action_one_pressed_;
var _roll_input = object_input_manager.action_two_pressed_;

roll_direction_ = direction_facing_ * 90;

if (_x_input == 0 and _y_input == 0) {
	// Not Moving
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = _animation_speed;
	image_xscale = _x_input == -1 ? -1 : 1;
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	roll_direction_ = direction_facing_ * 90;
}

if (_attack_input == true) {
	image_index = 0;
	state_ = player.sword;
}

if (_roll_input == true) {
	image_index = 0;
	state_ = player.evade;
}

move_movement_entity(false);
