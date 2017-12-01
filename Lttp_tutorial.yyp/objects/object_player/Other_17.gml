/// @description Jump State

z_ += z_speed_;
z_speed_ += gravity_;

if (z_ >= 0 and z_speed_ > -1) {
	z_ = 0;
	z_speed_ = z_speed_max_;
	gravity_ = gravity_max_;
		
	state_ = player.move;
}