/// @description
resolucao_w			= 1280
resolucao_h			= 720
resolucao_scale		= 5
view_target				= obj_helper //Quem a camera está seguindo
global.view_widht = resolucao_w / resolucao_scale
global.view_height = resolucao_h / resolucao_scale
window_set_size(global.view_widht * resolucao_scale, global.view_height * resolucao_scale)
surface_resize(application_surface, global.view_widht * resolucao_scale, global.view_height * resolucao_scale)