/// @description

global.resolucao_w			= 1280
global.resolucao_h			= 720
if room != rm_menu 
{
	global.resolucao_scale		= 3	
} else
{
	global.resolucao_scale		= 5	
}
view_target				= obj_helper //Quem a camera está seguindo

x = view_target.x
y = view_target.y

global.view_widht = global.resolucao_w / global.resolucao_scale
global.view_height = global.resolucao_h / global.resolucao_scale
window_set_size(global.view_widht * global.resolucao_scale, global.view_height * global.resolucao_scale)
surface_resize(application_surface, global.view_widht * global.resolucao_scale, global.view_height * global.resolucao_scale)

//Screen Shake
shake_length = 0;	 //O quanto a tela vai tremer
shake_time = 0;		//O tempo que ela vai tremer