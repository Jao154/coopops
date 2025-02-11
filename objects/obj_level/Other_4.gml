//Diz se o programa foi coletado
if file_exists("programas.ini")
{
	//armazenando o valor
	ini_open("programas.ini")
	programa = ini_read_real(name,"bool",false)
	ini_close();
}