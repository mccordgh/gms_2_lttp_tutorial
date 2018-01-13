///@param z
///@param height
///@param tile_height
///@param tile_width
///@param sprite

z_ = argument0 * TILE_HEIGHT;
height_ = argument1 * TILE_HEIGHT;
tile_height_ = argument2;
tile_width_ = argument3;
zh_ = z_ + height_;

sprite_index = argument4;

depth = -y + zh_;
