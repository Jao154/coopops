hspd = 0		//Velocidade horizontal
vspd = 0		//Velocidade Vertical
dir    =  0		//Direção que estou olhando
grav = .2			//Gravidade

timer_die = 60

timer = 0;
dmg_timer = 120;

/// @description
//Se estou sendo segurado
seg = 0
alpha = 1 //Transparência

//Último X e Y em que eu estava
last_x = x
last_y = y

//Tamanho da sprite
tam = sprite_width
global.helper_life = global.helper_life_max


//cleaner
cleaner_wait = 600; //recarga
cleaner_timer = 0; //temporizador
cleaner_begin = false; //inicio das particulas
hspd_buff = 2;
vspd_buff = 4.5;

//movimento
hspd_normal = 1.5;
vspd_normal = 3.8;
max_hspd = hspd_normal //Velocidade Máxima
max_vspd = vspd_normal //Pulo máximo

coyote_time = 10;

/*
_cam = camera_create()
camera_set_view_target(_cam,obj_helper)
*/

state = "idle"
state_machine = function()
{
	// checando se esta no chão
	var _icon_solid1 = 0
	if instance_exists(obj_icon1)
	{
		if obj_icon1.seg = 0
		{
			_icon_solid1 = place_meeting(x, y + 1, obj_icon1)	
		}
	}
	var _icon_solid2 = 0
	if instance_exists(obj_icon2)
	{
		if obj_icon2.seg = 0
		{
			_icon_solid2 = place_meeting(x, y + 1, obj_icon2)	
		}
	}
	
	//colisão com o cd	
	var _move_solid = 0
	if instance_exists(obj_move)
	{
		if obj_move.seg = 0
		{
			_move_solid = place_meeting(x, y + 1, obj_move)	
		}
	}
	
	
	
	var _ground = place_meeting(x, y + 1, obj_solid) or _icon_solid1 or _icon_solid2 or _move_solid
	
	// armazenando teclas
	var _left, _right, _up
		_left = keyboard_check(vk_left)			or keyboard_check(ord("A"))
		_right = keyboard_check(vk_right)		or keyboard_check(ord("D"))
		_up = keyboard_check_pressed(vk_space)
		
	var _press = _right - _left != 0 //Se eu estou apertando algum botão
	var _dir = (_right - _left) //Qual botão eu estou apertando
	var _len = point_direction(0, 0, _dir, 0) //Direção que devo ir

	
				//andando horizontalmente
			hspd = lengthdir_x(max_hspd * _press, _len)
	

	//girando
	if _dir != 0
	{
		image_xscale = sign(_dir)	
	}
	
	//Blocos que eu estou movendo
	var _push_list = ds_list_create()
	var _block_push = instance_place_list(x + hspd + sign(hspd) , y, obj_move, _push_list, 0)

	if (_ground)
	{
		coyote_time = 10;
	}
	else
	{
		coyote_time--;
	}
	switch(state)
	{
		
		case "idle":
		{
		
			sprite_index = spr_helper_idle;
			
			
			hspd = 0; //zerando a velocidade
			
			//pulando
			if (_up and coyote_time > 0)
			{
				audio_play_sound(sfx_jump,99,0,,,random_range(0.8,1.2))
				vspd -= max_vspd
			}
			
			
			//aplicando gravidade
			if (!_ground) vspd += grav;
			
			//se aperta algum botão ou a velocidade for diferente de 0
			if (abs(hspd) > 0 or abs(vspd) > 0 or _left or _right or _up )
			{
				//eu estou me movendo
				
				state = "moving"
			}
		
			
			
		
			
		}
		break
		case "moving":
		{
			//se não estou no chão
			if (!_ground)
			{
				//gravidade e sprite pulando
				sprite_index = spr_helper_jump;
				vspd += grav
			}
			else
			{
				//se estou no chão, eu ando
				sprite_index = spr_helper_walk;
			}
			
			//pulando
			if (_up and coyote_time > 0)
			{
				audio_play_sound(sfx_jump,99,0,,,random_range(0.8,1.2))
				vspd -= max_vspd
			}
			
			//Empurrando objetos
			if (instance_exists(obj_move))
			{
				if obj_move.seg = 0
				{
				if (_ground)
						{
						if (_block_push)
						{
							//Se tenho blocos que posso mover na lista de colisões 
							if (ds_list_size(_push_list) > 0)
							{
								//Muda o sprite para ele empurrando
								sprite_index = spr_helper_push
								max_hspd = 0.9
					
								//Faz um loop para identificar todos os blocos que posso mover
								for(var i = 0; i < ds_list_size(_push_list); i++)
								{
									var _block = _push_list[| i];
									//Movendo o bloco
									with(_block)
									{
											if !place_meeting(x + other.hspd, y, obj_solid)
											{
												x += other.hspd
											}
										}
									}
								}
						}else max_hspd = 1.5
					}
				}
			}
			//se minha velocidade horizontal for 0 e eu estiver no chão
			if (hspd = 0  and _ground)
			{
				//eu estou parado
				state = "idle"
			}
		}
		break
		case "folder":
		{
			sprite_index = spr_helper_folder;
			hspd = 0;
			
			var _ocupado = place_meeting(x,y,obj_solid) or place_meeting(x,y,obj_helper)
			
			
		
			//Se o mouse eata no estado de arraste
			if (obj_mouse.state = "drag")
			{
				//Se estou colidindo com o mouse
				if position_meeting(mouse_x, mouse_y, id) && !_ocupado
				{
		
					//se apertei o botão esquerdo
					if mouse_check_button(mb_left)
					{
			
						//se não tem nenhum item
						if obj_mouse.item = noone
						{
				
							//estou segurando aquel item
							obj_mouse.item = id	
						}
						//controla o gasto de usos
						if (obj_mouse.drag_uses > 0)
						{
							seg = 1;
			
							//se arrasta gasta um uso;
							if (obj_mouse.drag == false)
							{
								obj_mouse.drag = true;
								obj_mouse.drag_uses--;
							}
						}
	
					}
				}
	
				//se estou segurando ele
				if (seg = 1) && obj_mouse.item != noone
				{
		
						//Se movendo na grid
						var _x = (mouse_x div tam) * tam
						var _y = (mouse_y div tam) * tam
	
						obj_mouse.item.x = _x
						obj_mouse.item.y = _y;
		
				}
				// se soltei e não esta ocupado
				if mouse_check_button_released(mb_left)
					{
						seg = 0
						obj_mouse.item = noone;
						if (_ocupado)
						{
								x = last_x
								y = last_y
			
						} 
						else 
						{
							last_x = x
							last_y = y
						}
				}
			}
			else
			{
				if (!_ground)
			{
				//gravidade 
				
				vspd += grav
			}
			}

			//vermelho se esta ocupado
			if (_ocupado)
			{
				image_blend = c_red;
			} 
			else 
			{
				image_blend = c_white;
			}
		}
		break
	
		case "die":
		{
			hspd = 0
			vspd = 0
			sprite_index = spr_helper_die
			timer_die--
			
			if timer_die <= 0
			{
				if !instance_exists(obj_transicao)
				{
				var _trans = instance_create_layer(0,0,layer, obj_transicao)
						_trans.dest = room
				}
			}
			
		}
		break
	}
}


