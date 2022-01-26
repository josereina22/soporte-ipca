<?php 

function Conectarse() 
{ 
   $link = mysqli_connect('127.0.0.1','root','', 'bdservysoport');
   
   if (!$link ) 
   { 
      echo "Error conectando a la base de datos."; 
      exit(); 
   } 
   
   return $link; 
}    

function desconectarse($link)
{
   mysqli_close($link);
}