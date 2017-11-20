/// @description Move state

var _animation_speed = 0.6;


if (not alarm[3]) {
	var _x_input = random_range(-1, 1); //object_input_manager.right_ - object_input_manager.left_;
	var _y_input = random_range(-1, 1); //object_input_manager.down_ - object_input_manager.up_;
	var _input_direction = point_direction(0, 0, _x_input, _y_input);
	
	alarm[3] = global.one_second * 2;

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

}


if (random_range(0, 4) > 3 and not alarm[4]) {
	var _item = global.equipped_item_[0];
	
	
	if (instance_exists(_item)) and stamina_ >= _item.cost_ {
		state_ = _item.action_;
		stamina_ = max(0, stamina_ - _item.cost_);
		alarm[1] = global.one_second;
		alarm[4] = global.one_second * 3;
		image_index = 0;
	}
}
//inventory_use_item(object_input_manager.action_two_pressed_, global.equipped_item_[1]);

move_movement_entity(false);
