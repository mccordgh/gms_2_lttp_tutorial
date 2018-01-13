///@param _bounce
 
//DEBUGGING STUFF *****
global.solid_ = instance_place(
	x+lengthdir_x(speed_, direction_),
	y+lengthdir_y(speed_, direction_),
	collision_object_
);

global.jumpable_ = instance_place(
	x+lengthdir_x(speed_, direction_),
	y+lengthdir_y(speed_, direction_),
	object_jumpable
);
//DEBUGGING STUFF *******

var _bounce = argument0;

var _jumpable = instance_place(
		x+lengthdir_x(speed_, direction_),
		y+lengthdir_y(speed_, direction_),
		object_jumpable
	)
	
if (_jumpable)
{
	handle_jumpable_collision(_jumpable);
	
	exit;
} else {
	if (z_floor_ < 0 and state_ != player.jump)
	{
		z_speed_ = 0;
		jumpable_depth_ = 0;
		//falling_speed_ = max_speed_;
		state_ = player.jump;
	}
	z_floor_ = 0;
}

// Apply friction when sliding on walls
if place_meeting(
	x+lengthdir_x(speed_, direction_),
	y+lengthdir_y(speed_, direction_),
	collision_object_)
	and !_bounce
{
	speed_ = approach(speed_, 0, friction_ / 2);
}

var _x_speed = lengthdir_x(speed_, direction_);
var _y_speed = lengthdir_y(speed_, direction_);

if speed_ <= 0 exit; // No need to check for collisions

if place_meeting(x+_x_speed, y, collision_object_) {
	while !place_meeting(x + sign(_x_speed), y, collision_object_) {
		x += sign(_x_speed);
	}
	
	_x_speed = _bounce ? -(_x_speed) * bounce_amount_ : 0;
	
}
x += _x_speed;

if place_meeting(x, y+_y_speed, collision_object_) {
	while !place_meeting(x, y+sign(_y_speed), collision_object_) {
		y += sign(_y_speed);
	}
	
	_y_speed = _bounce ? -(_y_speed)*bounce_amount_ : 0;
	
}
y += _y_speed;

// Make sure to update speed and direction
speed_ = point_distance(0, 0, _x_speed, _y_speed);
direction_ = point_direction(0, 0, _x_speed, _y_speed);