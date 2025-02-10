///Mouse
global.clicks = 10 //Cliques eu eu ainda tenho
global.mouse_life = 5 //Quantas vidas o mouse tem

global.check_point = false;
global.check_x = 0;
global.check_y = 0;
global.check_icons = false;

//Jogador
global.helper_life = 3 //Quantas vidas o mouse tem

//font
var _alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/!?-#()[]:;ãâáàçõôóòêéèíìúù.,_+*&%\'"
global.font1 = font_add_sprite_ext(spr_font, _alphabet, true, -1)