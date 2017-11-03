///@param item

var _item = check_singleton(argument0);

var _item_index = array_find_index(_item, global.inventory);

if (_item_index == -1) {
	//Add Item to Inventory
	var _i = 0;
	var _array_size = array_length_1d(global.inventory);
	
	for (var _i = 0; _i < _array_size; _i++) {
		if (global.inventory[_i] = noone) {
			global.inventory[_i] = _item;
			return true;
		}
	}
} else {
	//Item already exists in inventory
	return true;
}

//Inventory is full
return false;