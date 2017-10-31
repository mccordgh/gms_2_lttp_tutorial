/// @description Initialize

global.one_second = game_get_speed(gamespeed_fps);

global.player_max_health = 4;
global.player_health = global.player_max_health;
global.player_max_stamina = 2;
global.player_stamina = global.player_max_stamina;
global.player_gems = 0;

instance_create_layer(0, 0, "Instances", object_input_manager);

//audio_play_sound(sound_bg_music, 10, true);
