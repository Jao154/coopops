/// @description Controla as ações do mouse
///Se o mouse está segurando alguma coisa
seg = 0
//Sprite do mouse
cursor_sprite = spr_pmouse
window_set_cursor(cr_none)

eraser = 0 //Modo de apagar
paint = true // Modo paint
paint_uses = 3;
//controlar o tempo do reinicio de fase
lose = false;

//temporizador de dano
life_timer = 90;
life = 3;