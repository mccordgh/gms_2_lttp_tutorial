draw_sprite(sprite_medium_shadow, 0, x, y + z_floor_);

draw_sprite_ext(sprite_index, image_index, x, y + z_, image_xscale, image_yscale, 0, -1, 1);

draw_self_flashing(c_white, 12, alarm[0]);

if (state_ = player.found_item and current_found_item_sprite_ != noone) {
	draw_sprite(current_found_item_sprite_, 0, x, y - 36);
}

if (global.environment_ = "dev")
{
	image_alpha = 0.3;
	gpu_set_fog(true, c_red, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, -1, 1);
	gpu_set_fog(false, c_red, 0, 1);

}
