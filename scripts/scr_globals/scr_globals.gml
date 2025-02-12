///Mouse
global.clicks = 10 //Cliques eu eu ainda tenho
global.mouse_life = 5 //Quantas vidas o mouse tem
global.mouse_life_max = 5 //Vidas máximas
///Checkpoint
global.check_point = false;
global.check_x = 0;
global.check_y = 0;
global.check_icons = false;


global.course_name = noone;

//Jogador
global.helper_life = 3 //Quantas vidas
global.helper_life_max = 3//Vida máxima
//Icones coletados
global.paint = false;
global.lixeira = false;
global.folder = false;
global.antivirus = false;
global.cleaner = false;


global.paint_uses = 10;

//Popup
global.popup = 0

//font
var _alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/!?-#()[]:;ãâáàçõôóòêéèíìúù.,_+*&%\'"
global.font1 = font_add_sprite_ext(spr_font, _alphabet, true, -1)

//buff
global.cleaner_buff = false;