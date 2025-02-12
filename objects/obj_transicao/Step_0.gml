/// @description

///Só roda se for a entrada da animação
if (start)
		{
		//Animando o sprite
		img += img_spd

		//Checando se a tela está totalmente preenchida
		if ((img - img_num) > cols + 5)
		{
			if (dest != noone)
			{
				//Vai para o destino
				room_goto(dest)
				
				//Aviso que estou saindo da animação
				start = false;
			}
		}
} else //Estou saindo da animação
	{
		//Animando o sprite
		img -= img_spd
		
		//Destruindo o objeto de transição
		if (img < -5)
		{
			instance_destroy();
		}
	}