<?php 
function Conectarse() 
{ 
   if (!($link=mysql_connect("127.0.0.1","root","12345678"))) 
   { 
      echo "Error conectando a la base de datos."; 
      exit(); 
   } 
   if (!mysql_select_db("bdservysoport",$link)) 
   { 
      echo "Error seleccionando la base de datos."; 
      exit(); 
   } 
   return $link; 
}    
function desconectarse()
{
	mysql_close();
}
?>