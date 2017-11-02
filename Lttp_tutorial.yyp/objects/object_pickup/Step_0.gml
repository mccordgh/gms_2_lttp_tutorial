z_ += z_speed_;
z_speed_ += gravity_;

if (z_ >= 0) {
	var _bounce_amount = 0.25;
	
	can_pickup_ = true;	
	z_speed_ = -z_speed_ * _bounce_amount;
	
	if (z_speed_ > -1) {
		z_speed_ = 0;
		z_ = 0;
	}
}