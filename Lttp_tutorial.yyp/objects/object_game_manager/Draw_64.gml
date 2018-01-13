var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

draw_set_colour(c_white);

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
	draw_text(40, 10, "pl depth: " + string(object_player.depth));
	draw_text(40, 0, "pl z_: " + string(object_player.z_));
	//draw_text(180, 10, "pl state: " + string(object_player.state_));
	draw_text(40, 20, "pl z_speed_: " + string(object_player.z_speed_));
	//draw_text(180, 30, "pl gravity_: " + string(object_player.gravity_));
	draw_text(40, 30, "pl z_floor_: " + string(object_player.z_floor_));
	draw_text(40, 40, "pl y: "+ string(object_player.y));
}

//draw_text(10, 45, "room name: " + string(room));

//draw_text(10, 55, "other player count: " + string(global.other_player_count));

//draw_text(10, 65, "length other player arr: " + string(array_length_1d(global.other_players)));


if (global.jumpable_)
{
	draw_text(180, 0, "j y: " + string(global.jumpable_.y));
	draw_text(180, 10, "j zh: " + string(global.jumpable_.height_ + global.jumpable_.z_));
	draw_text(180, 20, "j id: " + string(global.jumpable_));
	draw_text(180, 30, "j depth: " + string(global.jumpable_.depth));
}

if (global.solid_)
{
	//draw_text(180, 50, "s zh: " + string(global.jumpable_.height_ + global.jumpable_.z_));
	draw_text(180, 60, "s id: " + string(global.jumpable_));
	//draw_text(180, 70, "s depth: " + string(global.jumpable_.depth));
}
