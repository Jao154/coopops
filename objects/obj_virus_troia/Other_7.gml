if sprite_index == spr_troia_die
{
	instance_destroy(id)
	randomize();
	instance_create_layer(x-10,y,"virus",choose(obj_virus_corrupter,obj_virus_stalker))
	instance_create_layer(x+10,y,"virus",choose(obj_virus_corrupter,obj_virus_stalker))
	instance_create_layer(x,y-10,"virus",choose(obj_virus_corrupter,obj_virus_stalker))
}