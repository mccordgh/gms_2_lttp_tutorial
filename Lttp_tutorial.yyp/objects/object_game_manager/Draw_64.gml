var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

// If we are paused, draw a copy of the game screen with transparent black box behind it
if (sprite_exists(paused_sprite_)) {
	draw_sprite_ext(paused_sprite_,
	0,
	0,
	0,
	paused_sprite_scale,
	paused_sprite_scale,
	0,
	c_white,
	1);
	
	draw_set_alpha(0.6);
	draw_rectangle_color(0, 0, _gui_width, _gui_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

// draw the transparent black box around health and stamina
var _hud_right_edge = 3 + global.player_max_health * 15;
draw_sprite_ext(sprite_hud, 0, 0, _gui_height, _hud_right_edge, 1, 0, c_white, 1);
draw_sprite(sprite_hud_edge, 0, _hud_right_edge, _gui_height);

// Draw hearts to represent current health
for (var _i = 0; _i < global.player_max_health; _i++) {
	var _filled = _i < global.player_health;
	var _x = 4 + 15 * _i;
	var _y = _gui_height - 30;
	
	draw_sprite(sprite_heart_ui, _filled, _x, _y);
}

// Draw pellets to represent current stamina
for (var _i = 0; _i < global.player_max_stamina; _i++) {
	var _filled = _i < global.player_stamina;
	var _x = 4 + 15 * _i;
	var _y = _gui_height - 18;
	
	draw_sprite(sprite_stamina_ui, _filled, _x, _y);
}

// Draw gem icon and current number of gems
var _gem_string = string(global.player_gems);
var _text_width = string_width(_gem_string);
var _x = _gui_width - _text_width + 4;
var _y = _gui_height - 16 + 4;

draw_sprite(sprite_gem, 0, _x - 22, _y + 2);
draw_text(_x - 12, _y - 8, _gem_string);

inventory_draw(4, 36);


if (instance_exists(global.equipped_item_[0])) {
	draw_sprite(sprite_inventory_box, 0, 4, 4);
	draw_sprite(global.equipped_item_[0].sprite_, 0, 20, 20);	
}

if (instance_exists(global.equipped_item_[1])) {
	draw_sprite(sprite_inventory_box, 0, 36, 4);
	draw_sprite(global.equipped_item_[1].sprite_, 0, 52, 20);	
}

//DEBUGZ
if (instance_exists(object_player)) {
	draw_text(10, 35, "player depth: " + string(object_player.depth));
}

draw_text(10, 45, "room name: " + string(room));