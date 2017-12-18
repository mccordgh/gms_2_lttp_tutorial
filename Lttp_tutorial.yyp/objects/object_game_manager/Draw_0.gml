/// Draw highlights

exit;

var _circle_size = 12;

draw_set_circle_precision(4);

if (instance_exists(object_player)) {
	var _circle_x = object_player.x;
	var _circle_y = object_player.y;
	
	draw_set_colour(object_player.highlight_color_);
	draw_circle(_circle_x, _circle_y, _circle_size, false);
}

for (var i = 0; i < global.other_player_count; i++) {
	if (instance_exists(global.other_players[i])) {
		var _circle_x = global.other_players[i].x;
		var _circle_y = global.other_players[i].y;
	
		draw_set_colour(global.other_players[i].highlight_color_);
		draw_circle(_circle_x, _circle_y, _circle_size, false);
	}
}