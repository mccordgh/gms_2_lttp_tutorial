/// @description check for pickup and destroy

instance_destroy();

global.player_health = min(global.player_health + 1, global.player_max_health);

audio_play_sound(sound_collect_item, 2, false);
