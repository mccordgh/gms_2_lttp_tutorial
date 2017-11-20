/// @description Stamina Recharge

stamina_ = min(max_stamina_, stamina_ + 1);

if (stamina_ < max_stamina_) {
	alarm[1] = global.one_second;	
}