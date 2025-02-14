/// @description Controle
mask_index = spr_helper_idle
state_machine();

 
if (state != "folder")
{
	//Se ainda tenho tempo
	if (folder_cooldown > 0)
		{
			//Meu tempo diminui um segundo
			folder_cooldown = folder_cooldown - delta_time/1000000
		}
		else 
		{
			//Se não tenho tempo
			folder_timer = 0
		}
}
 
if (global.cleaner_buff == false)
{
	//Se ainda tenho tempo
	if (cleaner_cooldown > 0)
		{
			//Meu tempo diminui um segundo
			cleaner_cooldown = cleaner_cooldown - delta_time/1000000
		}
		else 
		{
			//Se não tenho tempo
			cleaner_timer = 0
		}
}




//Fica parado quando está em uma transição
if instance_exists(obj_transicao)
{
	hspd = 0
	vspd = 0
}

if (timer >= 0)
{
	timer--;
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
 

#region teclas para ativar programas do helper

//se apertei,aterno meu estado
if (global.paint)
{
	if (keyboard_check_pressed(ord("1")))
	{
		if (obj_mouse.state != "paint")
		{
			obj_mouse.state = "paint";		
		}
		else
		{
			obj_mouse.state = "none"
		}
	}
}
if (global.lixeira)
{
	if (keyboard_check_pressed(ord("2")))
	{
		if (obj_mouse.state != "eraser")
		{
			obj_mouse.state = "eraser";		
		}
		else
		{
			obj_mouse.state = "none"
		}
	}
}
if (global.antivirus)
{
	if (keyboard_check_pressed(ord("4")))
	{
		if (obj_mouse.state != "antivirus")
		{
			obj_mouse.state = "antivirus";		
		}
		else
		{
			obj_mouse.state ="none";
		}
	}
}


if (global.folder = true)
{
	if keyboard_check_pressed(ord("3"))
	{
		if (folder_cooldown <= 0)
			if state != "folder"
			{
				
				state = "folder"
			}
			else if state = "folder"
			{
				folder_cooldown = 5;
				state = "idle"
			}
		
	}		
	
}
//se o tempo do cleaner ja recarregou eu posso usa-lo
if (global.cleaner)
{
	if keyboard_check_pressed(ord("5"))
	{
		if (cleaner_cooldown <= 0)
		{
			global.cleaner_buff = true
			alarm[1] = 300;
		}
	}
}

#endregion
