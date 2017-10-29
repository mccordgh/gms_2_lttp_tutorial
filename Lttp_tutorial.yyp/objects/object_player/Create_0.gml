image_speed = 0;

enum player {
	move
}

enum dir {
	right,
	up,
	left,
	down
}

speed_ = 2;
direction_facing_ = dir.right;

// Sprite Move Lookup Table
sprite_[player.move, dir.right] = sprite_player_run_right;
sprite_[player.move, dir.up] = sprite_player_run_up;
sprite_[player.move, dir.left] = sprite_player_run_right;
sprite_[player.move, dir.down] = sprite_player_run_down;


global.player_health = 4;
