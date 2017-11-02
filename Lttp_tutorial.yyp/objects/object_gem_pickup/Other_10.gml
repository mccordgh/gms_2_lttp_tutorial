/// @description check for pickup and destroy

instance_destroy();

global.player_gems += 1;

audio_play_sound(sound_collect_item, 2, false);
