/// @description Draw with z_ offset

//image_xscale = tile_width_;
//image_yscale = tile_height_;

//var _yOffset = z_ - ((tile_height_  - 1) * TILE_HEIGHT);

//show_message("current: " + string(x) + ":" + string(y) + "\noffset: " + string(x) + ":" + string(y + _yOffset));

draw_sprite_ext(sprite_index, image_index, x, y + z_, image_xscale, image_yscale, 0, -1, 1);

//draw_sprite(sprite_index, image_index, x, y + _yOffset);

if (global.environment_ = "dev")
{
	image_alpha = 0.3;
	gpu_set_fog(true, c_blue, 0, 0.3);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, -1, 1);
	gpu_set_fog(false, c_blue, 0, 0.3);

}