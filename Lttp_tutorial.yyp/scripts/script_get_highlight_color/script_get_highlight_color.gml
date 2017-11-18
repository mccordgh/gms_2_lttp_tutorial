/// gets a unique higlight color for a player
var _highlight_colors = [];

_highlight_colors[0] = c_white;
_highlight_colors[1] = c_purple;
_highlight_colors[2] = c_blue;
_highlight_colors[3] = c_silver;
_highlight_colors[4] = c_yellow;
_highlight_colors[5] = c_aqua;
_highlight_colors[6] = c_olive;

return _highlight_colors[min(6, global.other_player_count)];
