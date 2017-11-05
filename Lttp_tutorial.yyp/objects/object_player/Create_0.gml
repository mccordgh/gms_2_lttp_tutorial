initialize_movement_entity(0.5, 1, object_solid);
initialize_hurtbox_entity();

image_speed = 0;

enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit
}

enum dir {
	right,
	up,
	left,
	down
}

acceleration_ = 1;
max_speed_ = 2;
direction_facing_ = dir.right;
roll_direction_ = 0;
roll_speed_ = 2;


starting_state_ = player.move;
state_ = starting_state_;

// Move State Sprite Lookup Table
sprite_[player.move, dir.right] = sprite_player_run_right;
sprite_[player.move, dir.up] = sprite_player_run_up;
sprite_[player.move, dir.left] = sprite_player_run_right;
sprite_[player.move, dir.down] = sprite_player_run_down;

// Attack State Sprite Lookup Table
sprite_[player.sword, dir.right] = sprite_player_attack_right;
sprite_[player.sword, dir.up] = sprite_player_attack_up;
sprite_[player.sword, dir.left] = sprite_player_attack_right;
sprite_[player.sword, dir.down] = sprite_player_attack_down;

// Attack State Sprite Lookup Table
sprite_[player.evade, dir.right] = sprite_player_roll_right;
sprite_[player.evade, dir.up] = sprite_player_roll_up;
sprite_[player.evade, dir.left] = sprite_player_roll_right;
sprite_[player.evade, dir.down] = sprite_player_roll_down;

// Hit State Sprite Lookup Table
sprite_[player.hit, dir.right] = sprite_player_run_right;
sprite_[player.hit, dir.up] = sprite_player_run_up;
sprite_[player.hit, dir.left] = sprite_player_run_right;
sprite_[player.hit, dir.down] = sprite_player_run_down;

// Bomb State Sprite Lookup Table
sprite_[player.bomb, dir.right] = sprite_player_run_right;
sprite_[player.bomb, dir.up] = sprite_player_run_up;
sprite_[player.bomb, dir.left] = sprite_player_run_right;
sprite_[player.bomb, dir.down] = sprite_player_run_down;

