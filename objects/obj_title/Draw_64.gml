/// @description Desenhando a logo de acordo com o tamanho da tela
if room != rm_title exit

var _gui_w = display_get_gui_width()
var _gui_h = display_get_gui_height()
draw_set_alpha(alpha)

draw_sprite_stretched(spr_logo, 0, x,y, _gui_w, _gui_h)

draw_set_alpha(1)