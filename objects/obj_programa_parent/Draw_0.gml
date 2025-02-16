/// @description
draw_self()
draw_set_font(global.font1)
draw_set_halign(1)
draw_text_transformed_color(x + sprite_width / 2, y + 20, string(nome_arquivo), 1, 1, 0, c_white, c_white, c_white, c_white, alpha)
draw_set_halign(-1)
draw_set_font(-1)