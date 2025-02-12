if sprite_index == spr_stalker_die 
{
	instance_create_layer(x,y,layer, obj_mini_explosion_particles)
	instance_destroy(id)
}