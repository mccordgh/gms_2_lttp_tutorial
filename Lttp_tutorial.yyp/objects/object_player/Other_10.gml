/// @description Move state

x_input_ = object_input_manager.right_ - object_input_manager.left_;
y_input_ = object_input_manager.down_ - object_input_manager.up_;
input_direction_ = point_direction(0, 0, x_input_, y_input_);

roll_direction_ = direction_facing_ * 90;

if (object_input_manager.jump_pressed_) {
	state_ = player.jump;	
}

if (x_input_ == 0 and y_input_ == 0) {
	// Not Moving
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = animation_speed_;
	image_xscale = x_input_ == -1 ? -1 : 1;
	get_direction_facing(input_direction_);
	add_movement_maxspeed(input_direction_, acceleration_, max_speed_);
	roll_direction_ = direction_facing_ * 90;
}

inventory_use_item(object_input_manager.action_one_pressed_, global.equipped_item_[0]);
inventory_use_item(object_input_manager.action_two_pressed_, global.equipped_item_[1]);

move_movement_entity(false);

// DEBUGZ
if (object_input_manager.left_mouse_down_) {
	instance_create_layer(mouse_x, mouse_y, "Instances", object_other_player);	
}
