
//Criando particulas se estou em buff
if (global.cleaner_buff)  
{
	instance_create_layer(x,y-10,"particles",obj_cleaner_particles)
	alarm[0] = 15;
}
