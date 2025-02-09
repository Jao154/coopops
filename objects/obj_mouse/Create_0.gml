/// @description Controla as ações do mouse
///Se o mouse está segurando alguma coisa
seg = 0
//Sprite do mouse
cursor_sprite = spr_pmouse
window_set_cursor(cr_none)

eraser = false;
paint = false;
eraser_uses = 3
paint_uses = 3;
//controlar o tempo do reinicio de fase
lose = false;

//temporizador de dano
life_timer = 90;
life = 3;
state = "none"
state_machine = function()
{
	switch(state)
	{
		case "none":
		{
			cursor_sprite = spr_pmouse;
		}
		break
		case "eraser":
		{
			
			if (mouse_check_button_pressed(mb_left))
			{
				if (mouse_y < 340)
					{
						if (obj_mouse.eraser_uses > 0)
						{
							state = "none"
							instance_destroy(other)
							eraser_uses--;
						}
					}			
			}
		}
		break
		case "paint":
		{
			cursor_sprite = spr_mouse_paint
			if mouse_check_button_pressed(mb_left)
			{
				if (mouse_y < 340)
				{
					if (paint_uses > 0)
					{
						instance_create_layer(mouse_x,mouse_y,"Instances",obj_color)
						paint_uses--;
					}
				}
			}
		}
		break
		
	}
}

#region

#endregion
