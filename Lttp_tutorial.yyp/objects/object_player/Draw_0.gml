draw_sprite(sprite_medium_shadow, 0, x, y);

draw_sprite_ext(sprite_index, image_index, x, y + z_ - height_, image_xscale, image_yscale, 0, -1, 1);

draw_self_flashing(c_white, 12, alarm[0]);

if (current_found_item_sprite_ != noone) {
	draw_sprite(current_found_item_sprite_, 0, x, y - 36);
}
