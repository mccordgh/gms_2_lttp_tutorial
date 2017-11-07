/// @description Stamina Recharge

global.player_stamina = min(global.player_max_stamina, global.player_stamina + 1);

if (global.player_stamina < global.player_max_stamina) {
	alarm[1] = global.one_second;	
}