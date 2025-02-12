image_speed = 0;
image_index = frame; //variable definition, meu icone

//fui coletado
_get = true;

if file_exists("checkpoint.ini")
{
	file_delete("checkpoint.ini")
}

//abre o arquivo e adiciona o programa
ini_open("programas.ini")
ini_write_real(name,"bool",true)
ini_close();