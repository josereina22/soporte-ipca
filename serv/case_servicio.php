<?php
session_start();
include ("conexion.php");
$seleccion=$_REQUEST["seleccion"];
switch($seleccion)
{
	case 1:
	//Inclusion NUEVO SERVICIO de Servicio
	conectarse ();
	$cod_tec_serv=$_SESSION["cod_tec_serv"];          //codigo funcionario de servicio General
	$correo_tec_serv= $_SESSION["correo_tec_serv"];   //correo del funcionario de servicio General
  
	$usuario=$_POST["usuario"];    //codigo del funcionario  
	
	$detalle=$_POST["detalle"];    
	$tsolicitud=$_POST["tsolicitud"];
	
		
 
	$consulta="SELECT * FROM t_empleado WHERE codigo='$usuario' ";
	$resultado_usu= mysql_query ($consulta) or die("error consulta: ".mysql_error());
	$campo = mysql_fetch_array($resultado_usu);
	$correo_usu= $campo["correo"];
	$nombre_usu= $campo["pnombre"];
	$apellido_usu= $campo["papellido"];
	
	$tservicio=$_POST['tservicio']; //codigo del tipo de servicio
	$status= $_POST['status_solicitud'];
	$descripcion=$_POST['descripcion']; 
	$solucion=$_POST['solucion'];
	$fecha_inicio=$_SESSION["fecha_inicio"];
	
	echo $cod_tec_serv. '<br>'. $usuario. '<br>'. $tservicio. '<br>' .$status . '<br>' .$descripcion . '<br>' .$solucion . '<br>' .$fecha_inicio . '<br>'.'<br>' .$detalle.'<br>'. $tsolicitud;

	//Pregunto si el estatus de la llamada esta abierta o en proceso
   if ($status==1 or $status==3)
   	{
        mysql_query("INSERT INTO t_servicio Values('','$cod_tec_serv','$usuario', '$tservicio', '$status', '$descripcion', '$solucion', '$fecha_inicio','')") or die("error en Incluir: ".mysql_error());
    }
   //Pregunto si el estatus de la llamada está cerrada
   elseif ($status==2)
    {
	     mysql_query("INSERT INTO t_servicio Values('','$cod_tec_serv', '$usuario', '$tservicio', '$status','$descripcion', '$solucion', '$fecha_inicio','$fecha_inicio')") or die("error en Incluir: ".mysql_error());
	}
$consulta_cod="SELECT MAX(cod_servicio) AS mayor_valor FROM t_servicio";
$resul_cod= mysql_query ($consulta_cod) or die("error consulta: ".mysql_error());
$campo_cod= mysql_fetch_array($resul_cod);
$cod_servicio= $campo_cod['mayor_valor'];
  
      if ($tservicio==1) //pregunto si es vehiculo para detallar el mismo
	 	{
	 	 mysql_query("INSERT INTO t_serv_vehiculo Values('', '$cod_servicio','$detalle', '$tsolicitud')") or die("error en Incluir: ".mysql_error());
		}
	  else if ($tservicio==2) //pregunto si es Sede para ofrecer mas detalles
		{
	 	 mysql_query("INSERT INTO t_serv_sede Values('', '$cod_servicio','$detalle', '$tsolicitud')") or die("error en Incluir: ".mysql_error());
		}
$destinatario = $correo_usu; 
$asunto = "Servicio Nro - ".$cod_servicio. " -Falla:".$descripcion; 
//$cuerpo= "Solución Tomada: <br>". $solucion. "<br> Atendido Por:". $nombre. " ".$apellido;
$cuerpo = ' 
<html> 
<head> 
   <title>Servicio</title> 
</head> 
<body> 
<p> 
<b> Buen Día, </b>'. $nombre_usu. '  ' .$apellido_usu.
'<b><br> La Solución Tomada: </b>'. $solucion. 
'<b><br> Atendido Por: </b>' . $nombre. ' '.$apellido .
'</p> 
</body> 
</html> 
'; 

//para el envío en formato HTML 
$headers = "MIME-Version: 1.0\r\n";  
$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n"; 

//dirección del remitente 
$headers .= "From:". $nombre. " " .$apellido. "<". $correo_tec_serv. ">\r\n";

//direcciones que recibián copia 
//$headers .= "Cc: josereina22@yahoo.com\r\n"; 
//direcciones que recibirán copia oculta 
//$headers .= "Bcc: ipcagraficas@ipcachacao.org.ve\r\n"; 

if (mail($destinatario,$asunto,$cuerpo,$headers)){
		echo  "correo correcto";
}else{	
echo  "correo incorrecto";
}
	
	//header("location: consulta_soporte.php?mensaje=1");
	
		?>
         <script type="text/javascript">
		 	window.location="consulta_servicio.php";//, "javascript:llamarasincrono('Soporte_usuario.php', 'cuerpo_usu')";
         </script>
	    <?php
	break;

	
	case 2:
	//Actualizacion de Registros
	conectarse ();
		date_default_timezone_set('America/Caracas');
		$fecha_fin= date('Y-m-d');
		
		$cod_servicio= $_SESSION['cod_servicio'];
		$solucion=$_POST['solucion'];
		$status=$_POST['status_solicitud'];
		
		//datos del Técnico de Servicio para el envio del correo 
		$cod_tec_servicio=$_SESSION["cod_tec_servicio"];        //codigo del técnico logeado
		$nombre=$_SESSION["nombre_tec"];         //nombre del técnico
		$apellido = $_SESSION["apellido_tec"];   //apellido del técnico
		$correo_tec= $_SESSION["correo_tec"];   //correo del Técnico
		
		//datos del funcionario para el envio del correo 
		$correo_usu= $_SESSION["correo_usu"];   //correo del Funcionario
		$nombre_usu=$_SESSION["nombre_usu"];         //nombre del usuario
		$apellido_usu = $_SESSION["apellido_usu"];   //apellido del usuario
		
		//Pregunto si el estatus de la llamada es CERRADO
   if ($status==2)
     {
     mysql_query("UPDATE t_servicio SET cod_tec_servicio='$cod_tec_servicio', solucion='$solucion', cod_status_solicitud= '$status', fecha_fin='$fecha_fin' WHERE cod_servicio= $cod_servicio") or die("error en Actualizar: ".mysql_error());	
     }
   else 
     {
	 mysql_query("UPDATE t_servicio SET cod_tec_servicio='$cod_tec_servicio', solucion='$solucion', cod_status_solicitud= '$status' WHERE cod_servicio= $cod_servicio") or die("error en Actualizar: ".mysql_error());	
	 }
	$destinatario = $correo_usu; 
	$asunto = "Solicitud de Servicio Número - ".$cod_servicio. " -Falla:".$descripcion; 
	//$cuerpo= "Solución Tomada: <br>". $solucion. "<br> Atendido Por:". $nombre. " ".$apellido;
	$cuerpo = ' 
<html> 
<head> 
   <title>Servicio General</title> 
</head> 
<body> 
<p> 
<b> Buen Día </b>'. $nombre_usu. '  ' .$apellido_usu.
'<b><br> Solución a tu requerimiento: </b>'. $solucion. 
'<b><br> Atendido Por: </b>' . $nombre. ' '.$apellido .
'</p> 
</body> 
</html> 
'; 

//para el envío en formato HTML 
$headers = "MIME-Version: 1.0\r\n";  
$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n"; 

//dirección del remitente 
$headers .= "From:". $nombre. " " .$apellido. "<". $correo_tec. ">\r\n";

//direcciones que recibián copia 
//$headers .= "Cc: josereina22@yahoo.com\r\n"; 
//direcciones que recibirán copia oculta 
//$headers .= "Bcc: ipcagraficas@ipcachacao.org.ve\r\n"; 

if (mail($destinatario,$asunto,$cuerpo,$headers)){
		echo  "correo correcto";
}else{	
echo  "correo incorrecto";
}
	
//	header("location: consulta_soporte.php?mensaje=1");	
			?>
         <script type="text/javascript">
			window.location="consulta_servicio.php";
		 </script>
	    <?php

	break;
	
	case 3:
		//Inclusion NUEVO servicio del usuario
	  $link=conectarse ();
	  $cod_tec_servicio="";
	  $fecha_inicio=$_SESSION["fecha_inicio"];
	  $cod_usu=$_SESSION['cod_usu'];   //Código del Funcionario
	  $tservicio=$_POST['tservicio'];  //Tipo de Servicio
	  $status= 1;
	  if ($tservicio==1)
	  	  {$descripcion=$_POST['descripcionv'];}
	  elseif ($tservicio==2)
	  	  {$descripcion=$_POST['descripcions'];}
		  
	  mysql_query("INSERT INTO t_servicio Values('', '','$cod_usu', '$tservicio', '$status','$descripcion','', '$fecha_inicio','')") or die("error en Incluir: ".mysql_error());
	  $consulta_cod="SELECT MAX(cod_servicio) AS mayor_valor FROM t_servicio";
	  $resul_cod= mysql_query ($consulta_cod) or die("error consulta: ".mysql_error());
	  $campo_cod= mysql_fetch_array($resul_cod);
	  $cod_servicio= $campo_cod['mayor_valor'];
	  if ($tservicio==1) //pregunto si es vehiculo para detallar el mismo
	 	{
	 	 $placa=$_POST['vehiculo'];
		 $cod_solic_serv_vehiculo= $_POST['tsolicitudv'];
	 	 mysql_query("INSERT INTO t_serv_vehiculo Values('', '$cod_servicio','$placa', '$cod_solic_serv_vehiculo')") or die("error en Incluir: ".mysql_error());
		}
	  else if ($tservicio==2) //pregunto si es Sede para ofrecer mas detalles
		{
		 $cod_sede= $_POST['tsede'];
		 $cod_solic_serv_sede= $_POST['tsolicituds'];
	 	 mysql_query("INSERT INTO t_serv_sede Values('', '$cod_servicio','$cod_sede', '$cod_solic_serv_sede')") or die("error en Incluir: ".mysql_error());
		}
	//header("location: soporte_usuario.php?mensaje=1");
		?>
         <script type="text/javascript">
		 	window.location="servicio_usuario.php";//, "javascript:llamarasincrono('Soporte_usuario.php', 'cuerpo_usu')";
         </script>
        <?php
	// Seleccionar nombre, apellido y correo del funcionario para enviar el correo 
	  $consulta="SELECT * FROM t_empleado WHERE codigo='$cod_usu' ";
	  $resultado_usu= mysql_query ($consulta) or die("error consulta: ".mysql_error());
	  $campo = mysql_fetch_array($resultado_usu);
	  $nombre_usu=$campo["pnombre"];
	  $apellido_usu=$campo["papellido"];
	  $correo_usu= $campo["correo"];

	// Selecciona el ultimo Servicio que se registró
	  $consulta_cod="SELECT MAX(cod_servicio) AS mayor_valor FROM t_servicio";
	  $resul_cod= mysql_query ($consulta_cod) or die("error consulta: ".mysql_error());
  	  $campo_cod= mysql_fetch_array($resul_cod);
	  $cod_servicio= $campo_cod['mayor_valor'];
		
	$destinatario = 'wvaldiviezo@ipcachacao.org.ve'; 
	$asunto = "Solicitud de Servicio Número - ".$cod_servicio. " -Reporte:".$descripcion; 
	$cuerpo = ' 
	<html> 
	<head> 
   	<title>Servicio General</title> 
	</head> 
	<body> 
	<p> 
	<b> Requerimiento Reportado: </b>'. $descripcion. 
	'<b><br> Solicitado por: </b>' . $nombre_usu. ' '.$apellido_usu.
	'</p> 
	</body> 
	</html> '; 
	//para el envío en formato HTML 
	$headers = "MIME-Version: 1.0\r\n";  
	$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

	//dirección del remitente 
	$headers .= "From:". $nombre_usu. " " .$apellido_usu. "<". $correo_usu. ">\r\n";
	
	//direcciones que recibián copia 
	$headers .= "Cc: asistentesg@ipcachacao.org.ve";
	//direcciones que recibirán copia oculta 
	//$headers .= "Bcc: ipcagraficas@ipcachacao.org.ve\r\n"; 
	
	if (mail($destinatario,$asunto,$cuerpo,$headers))
	{
			echo  "correo correcto";
	}
	else
	{	
		echo  "correo incorrecto";
	}
		break;	
	case 4:
	//Eliminacion de Registros
	conectar();
	$cedula=$_POST['cedula'];
	$eliminar="DELETE FROM tabla_usuarios WHERE cedula='$cedula'";
	mysql_db_query($mydb,$eliminar) or die("error en la eliminar: ".mysql_error());
	header("location: eliminar.php?mensaje=1");	
	break;
}
?>