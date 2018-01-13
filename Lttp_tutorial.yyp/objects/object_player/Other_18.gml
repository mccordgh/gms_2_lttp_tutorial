/// @description Falling State

z_ += z_speed_;
z_speed_ += gravity_;
falling_speed_ -= (max_speed_ * .04);

if (x_input_ == 0 and y_input_ == 0) {
	// Not Moving
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = animation_speed_;
	image_xscale = x_input_ == -1 ? -1 : 1;
	
	get_direction_facing(input_direction_);
	add_movement_maxspeed(input_direction_, acceleration_, falling_speed_);
	roll_direction_ = direction_facing_ * 90;
	
	move_movement_entity(false);
}

if (z_ >= z_floor_)
{
	z_ = z_floor_;
	z_speed_ = z_speed_max_;
	gravity_ = gravity_max_;
		
	state_ = player.move;
}