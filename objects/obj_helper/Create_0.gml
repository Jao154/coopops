if (global.check_point)
{
	x = global.check_x
	y = global.check_y
}

hspd = 0		//Velocidade horizontal
vspd = 0		//Velocidade Vertical
dir    =  0		//Direção que estou olhando
grav = .2			//Gravidade

max_hspd = 1.5 //Velocidade Máxima
max_vspd = 3.8 //Pulo máximo

state = "idle"
state_machine = function()
{
	// checando se esta no chão
	var _icon_solid = 0
	
	if obj_programa_parent.seg = 0
	{
		var _icon_solid = place_meeting(x, y + 1, obj_programa_parent)	
	}
	
	var _ground = place_meeting(x, y + 1, obj_solid) or _icon_solid
	
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

	
	switch(state)
	{
		
		case "idle":
		{
		
			sprite_index = spr_helper_idle;
			
			
			hspd = 0; //zerando a velocidade
			
			//pulando
			if (_up and _ground)
			{
				
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
			if (_up and _ground)
			{
				vspd -= max_vspd
			}
			
			//Empurrando objetos
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
			
			//se minha velocidade horizontal for 0 e eu estiver no chão
			if (hspd = 0  and _ground)
			{
				//eu estou parado
				state = "idle"
			}
		}
		break
	}
}
