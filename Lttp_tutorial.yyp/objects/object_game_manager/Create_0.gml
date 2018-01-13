/// @description Initialize

global.jumpable_ = noone;

#macro TILE_HEIGHT 16
#macro TILE_WIDTH 24

global.one_second = game_get_speed(gamespeed_fps);

instance_create_layer(0, 0, "Instances", object_input_manager);

global.player_max_health = 4;
global.player_health = global.player_max_health;
global.player_max_stamina = 3;
global.player_stamina = global.player_max_stamina;
global.player_gems = 0;
global.player_start_position = instance_jump_party_start;

global.sword_not_found = 1;

global.other_player_count = 0;
global.other_players = [];

var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(sprite_font, _font_string, true, 1);
draw_set_font(global.font);

var _view_width = camera_get_view_width(view_camera[0]);
var _view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(_view_width, _view_height);

paused_ = false;
paused_sprite_ = noone;
paused_sprite_scale = display_get_gui_width() / view_wport[0];

item_index_ = 0;
global.equipped_item_[0] = object_sword_item;
global.equipped_item_[1] = noone;

inventory_create(6);
inventory_add_item(object_bomb_item);
inventory_add_item(object_ring_item);
inventory_add_item(object_sword_item);

//audio_play_sound(sound_bg_music, 10, true);
