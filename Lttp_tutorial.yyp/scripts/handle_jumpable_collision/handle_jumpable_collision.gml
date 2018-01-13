/// @param jumpable

var _jumpable = argument0;

global.player_tile_height_ = z_;

// Apply friction when sliding on walls
if place_meeting(
	x+lengthdir_x(speed_, direction_),
	y+lengthdir_y(speed_, direction_),
	_jumpable
) {
	speed_ = approach(speed_, 0, friction_ / 2);
}

var _x_speed = lengthdir_x(speed_, direction_);
var _y_speed = lengthdir_y(speed_, direction_);

if speed_ <= 0 exit; // No need to check for collisions

if (
	place_meeting(x+_x_speed, y, _jumpable)
	and (state_ != player.jump)
	and (zh_ > _jumpable.zh_)
) {
	while !place_meeting(x + sign(_x_speed), y, _jumpable) {
		x += sign(_x_speed);
	}
	
	_x_speed = 0;
}

if (zh_ <= _jumpable.zh_)
{
	depth_offset_ = _jumpable.depth - 1;
	z_floor_ = _jumpable.zh_;
	x += _x_speed;
}

if (
	place_meeting(x, y+_y_speed, _jumpable)
	and (state_ != player.jump)
	and (zh_ > _jumpable.zh_)
) {
	while !place_meeting(x, y+sign(_y_speed), _jumpable) {
		y += sign(_y_speed);
	}
	
	_y_speed = 0;
	
}


if (zh_ <= _jumpable.zh_)
{
	depth_offset_ = _jumpable.depth - 1;
	z_floor_ = _jumpable.zh_;
	y += _y_speed;
}

// Make sure to update speed and direction
speed_ = point_distance(0, 0, _x_speed, _y_speed);
direction_ = point_direction(0, 0, _x_speed, _y_speed);
