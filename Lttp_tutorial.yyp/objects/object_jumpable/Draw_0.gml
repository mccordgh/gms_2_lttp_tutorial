/// @description Draw with z_ offset

//image_xscale = tile_width_;
//image_yscale = tile_height_;

//var _yOffset = z_ - ((tile_height_  - 1) * TILE_HEIGHT);

//show_message("current: " + string(x) + ":" + string(y) + "\noffset: " + string(x) + ":" + string(y + _yOffset));

draw_sprite_ext(sprite_index, image_index, x, y + z_, image_xscale, image_yscale, 0, -1, 1);

//draw_sprite(sprite_index, image_index, x, y + _yOffset);