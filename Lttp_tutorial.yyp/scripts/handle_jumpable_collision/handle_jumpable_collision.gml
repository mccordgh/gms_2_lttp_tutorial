/// @param bounce
/// @param jumpable

var _bounce = argument0;
var _jumpable = argument1;

var _player_height = floor((abs(z_) / TILE_HEIGHT)) +  height_;

global.jumpable_ = _jumpable;
global.player_tile_height_ = _player_height;

// Apply friction when sliding on walls
if place_meeting(
	x+lengthdir_x(speed_, direction_),
	y+lengthdir_y(speed_, direction_),
	_jumpable)
	and !_bounce {
	speed_ = approach(speed_, 0, friction_ / 2);
}

var _x_speed = lengthdir_x(speed_, direction_);
var _y_speed = lengthdir_y(speed_, direction_);

if speed_ <= 0 exit; // No need to check for collisions

if place_meeting(x+_x_speed, y, _jumpable) and (state_ != player.jump) {
	while !place_meeting(x + sign(_x_speed), y, _jumpable) {
		x += sign(_x_speed);
	}
	
	_x_speed = _bounce ? -(_x_speed) * bounce_amount_ : 0;
	
}

if (_player_height >= _jumpable.height_) x += _x_speed;

if place_meeting(x, y+_y_speed, _jumpable) and (state_ != player.jump) {
	while !place_meeting(x, y+sign(_y_speed), _jumpable) {
		y += sign(_y_speed);
	}
	
	_y_speed = _bounce ? -(_y_speed)*bounce_amount_ : 0;
	
}
if (_player_height >= _jumpable.height_) y += _y_speed;

// Make sure to update speed and direction
speed_ = point_distance(0, 0, _x_speed, _y_speed);
direction_ = point_direction(0, 0, _x_speed, _y_speed);