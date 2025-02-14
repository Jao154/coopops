if !instance_exists(id) exit
if (obj_mouse.state == "antivirus" and state != "die")
{

					id.life--; //reduz a vida
					velocity = 0; // faz ele parar
					alarm[0] = 10; // tempo para ele voltar a andar
					screen_shake(15,10)
					//efeito mola
					if (state != "die")
					{
						image_xscale = lerp(image_xscale,2,0.5)
						image_yscale = lerp(image_yscale,0.2,0.5)
					}
}