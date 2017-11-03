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
	}
}