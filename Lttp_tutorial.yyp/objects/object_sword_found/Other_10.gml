/// @description check for pickup and destroy

if (global.sword_not_found == 0) exit;

global.sword_not_found = 0;
image_index = global.sword_not_found;

//object_player.state_ = player.found_item;
audio_play_sound(sound_key_item, 8, false);

inventory_add_item(object_sword_item);
