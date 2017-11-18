/// @description Bomb State

instance_create_layer(x, y + 2, "Instances", object_bomb);

audio_play_sound(sound_set_bomb, 5, false);

state_ = player.move;