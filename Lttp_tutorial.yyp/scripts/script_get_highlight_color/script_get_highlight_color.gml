/// gets a unique higlight color for a player
var _highlight_colors = [];

_highlight_colors[0] = c_white;
_highlight_colors[1] = c_purple;
_highlight_colors[2] = c_blue;
_highlight_colors[3] = c_silver;
_highlight_colors[4] = c_yellow;
_highlight_colors[5] = c_aqua;
_highlight_colors[6] = c_olive;

var _number_of_highlights = array_length_1d(_highlight_colors);
var _highlight_counter = global.other_player_count - 
	(_number_of_highlights *
	floor(global.other_player_count / _number_of_highlights)
	);

return _highlight_colors[_highlight_counter];
