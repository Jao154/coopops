/// @description
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, image_blend, alpha)

if seg = 1
{
	alpha = .5
} else alpha = 1
//draw_text(x, y - 20, seg)

draw_set_color(c_black)
draw_text(x, y - 10, seg)
draw_set_color(c_white)