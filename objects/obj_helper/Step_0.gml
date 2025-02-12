/// @description Controle
mask_index = spr_helper_idle
state_machine();

if (timer >= 0)
{
	timer--;
}

#region cleaner control
if (cleaner_timer >= -10)
{
	cleaner_timer--;
}


if (global.cleaner_buff)
{
	max_hspd = hspd_buff;
	max_vspd = vspd_buff
	if (cleaner_begin == false)
	{
		cleaner_begin = true;
		alarm[0] = 30;
	}
}
else
{
	max_hspd = hspd_normal;
	max_vspd = vspd_normal;
}

#endregion 

#region teclas para ativar programas do helper

//se apertei,aterno meu estado
if keyboard_check_pressed(ord("3"))
{
	if (obj_mouse.folder_uses > 0)
	{
		if state != "folder"
		{
			obj_mouse.folder_uses--;
			state = "folder"
		}
		else
		{
			state = "idle"
		}
		
	}
	else
	{
		state = "idle"
	}
}

//se o tempo do cleaner ja recarregou eu posso usa-lo
if keyboard_check_pressed(ord("5"))
{
	if (cleaner_timer <= 0)
	{
		global.cleaner_buff = true
		obj_control.alarm[0] = 180;
		cleaner_timer = cleaner_wait;
	}
}

#endregion
/*
if state != "folder"
{
	camera_set_view_speed(_cam,2,2)
}
else
{
		camera_set_view_speed(_cam,0,0);
}