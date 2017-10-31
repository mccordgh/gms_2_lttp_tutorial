///@param sprite
///@param x
///@param y
///@param image_speed
///@param has_depth

var _sprite = argument0;
var _x = argument1;
var _y = argument2;
var _speed = argument3;
var _has_depth = argument4;

var _effect = instance_create_layer(x, y, "Effects", object_animation_effect);

_effect.sprite_index = _sprite;
_effect.image_speed = _speed;

if (_has_depth) {
	_effect.depth = -_y;
}

return _effect;