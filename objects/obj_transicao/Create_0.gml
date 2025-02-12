/// @description

//Tamaho do sprite
tamanho = sprite_get_width(spr_trans)

//Destino da transição
dest = noone;

//Tamanho da tela
cols = ceil(global.resolucao_w / tamanho)
lins = ceil(global.resolucao_h / tamanho)

//Animação do sprite
img = 0			//Imagem inicial
img_spd = sprite_get_speed(spr_trans) / room_speed //Velocidade da animação
img_num = sprite_get_number(spr_trans)-1

//Entrando ou saindo da animação
start = true