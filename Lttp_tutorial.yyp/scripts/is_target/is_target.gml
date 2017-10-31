///@param value
///@param target_array

var _value = argument0;
var _targets = argument1;
var _targets_length = array_length_1d(_targets);

var _index = 0;

repeat (_targets_length) {
	if (_value = _targets[_index] or object_is_ancestor(_value, _targets[_index])) return true;
	_index++;
}

return false;