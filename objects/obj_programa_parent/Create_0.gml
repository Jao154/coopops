/// @description
//Se estou sendo segurado
seg = 0
alpha = 1 //Transparência

//Último X e Y em que eu estava
last_x = x
last_y = y

//Tamanho da sprite
tam = sprite_width

//Nome do arquivo
nomes		= ["arquivo", "info", "arte", "pato", "setup"]
extensao	= [".mp3", ".mp4", ".ogg", ".exe", ".bat", ".dll", ".png", ".jpeg", ".pdf"]

var _nomes = array_length(nomes) - 1
var _ext = array_length(extensao) - 1

nome_arquivo = nomes[random_range(0, _nomes)] + extensao[random_range(0, _ext)]