if (hurtbox_entity_can_be_hit_by(other)) {
	instance_destroy();
	create_animation_effect(sprite_grass_death, x, y, random_range(0.6, 1.2), true);
	
	var _chance_to_drop = random(100);
	
	if (_chance_to_drop >= 75) {
		instance_create_layer(x, y, "Instances", object_gem_pickup);
	}
}