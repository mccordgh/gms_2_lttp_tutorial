if (paused_) {
	var _array_size = array_length_1d(global.inventory);
	
	if (object_input_manager.right_pressed_) {
		audio_play_sound(sound_menu_navigate, 1, false);
		item_index_ = min(item_index_ + 1, _array_size - 1);	
	}
	
	if (object_input_manager.left_pressed_) {
		audio_play_sound(sound_menu_navigate, 1, false);
		item_index_ = max(item_index_ - 1, 0);	
	}
	
	if (object_input_manager.action_one_pressed_) {
		global.equipped_item_[0] = global.inventory[item_index_];
		audio_play_sound(sound_menu_select, 3, false);
	}

	if (object_input_manager.action_two_pressed_) {
		global.equipped_item_[1] = global.inventory[item_index_];
		audio_play_sound(sound_menu_select, 3, false);
	}
}

if (object_input_manager.pause_pressed_) {
	if (paused_) {
		paused_ = false;

		if (sprite_exists(paused_sprite_)) {
			sprite_delete(paused_sprite_);
		}
		
		audio_play_sound(sound_unpause, 5, false);
		instance_activate_all();
	} else {
		paused_ = true;

		paused_sprite_ = sprite_create_from_surface(
			application_surface,
			0,
			0,
			view_wport[0],
			view_hport[0],
			false,
			false,
			0,
			0
		);
		
		audio_play_sound(sound_pause, 5, false);
		instance_deactivate_all(true);
		instance_activate_object(object_input_manager);
		
		var _array_size = array_length_1d(global.inventory);
		for (var _i = 0; _i < _array_size; _i++) {
			instance_activate_object(global.inventory[_i]);	
		}
	}
}