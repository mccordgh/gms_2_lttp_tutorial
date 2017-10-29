///@param sprite
///@param x
///@param y
///@param angle
///@param frames_til_destroy
///@param targets_array
///@param damage
///@param knockback

var _sprite = argument0;
var _x = argument1;
var _y = argument2;
var _angle = argument3;
var _frames_til_destroy = argument4;
var _targets_array = argument5;
var _damage = argument6;
var _knockback = argument7;

var _hitbox = instance_create_layer(_x, _y, "Instances", object_hitbox);

_hitbox.sprite_index = _sprite;
_hitbox.image_angle = _angle;
_hitbox.alarm[0] = _frames_til_destroy;
_hitbox.targets_ = _targets_array;
_hitbox.damage_ = _damage;
_hitbox.knockback_ = _knockback;

return _hitbox;