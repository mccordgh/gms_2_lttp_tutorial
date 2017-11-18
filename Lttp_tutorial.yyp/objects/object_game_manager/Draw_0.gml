if (instance_exists(object_player)) {
	var _circle_size = 20;
	var _circle_x = object_player.x;
	var _circle_y = object_player.y;
	
	draw_set_circle_precision(4);
	draw_set_colour(c_green);
	draw_circle(_circle_x, _circle_y, _circle_size, false);
}