<?php
include ("../conexion.php");
$seleccion=$_REQUEST["seleccion"];
switch($seleccion)
{
	case 1:
	//Inclusion NUEVO SOPORTE del Técnico
	$link=conectarse ();
	$cod_tec=$_SESSION["cod_tec"];        //codigo del técnico logeado
	$nombre=$_SESSION["nombre_tec"];         //nombre del técnico
	$apellido = $_SESSION["apellido_tec"];   //apellido del técnico
	$correo_tec= $_SESSION["correo_tec"];   //correo del Técnico
  
	$usuario=$_POST["usuario"];    //codigo del funcionario  
 
	$consulta="SELECT * FROM t_empleado WHERE codigo='$usuario' ";
	$resultado_usu= $link->query($consulta) or die("error consulta");
	$campo = $resultado_usu->fetch_array();
	$correo_usu= $campo["correo"];
	$nombre_usu= $campo["pnombre"];
	$apellido_usu= $campo["papellido"];
	$tsoporte=$_POST['tsoporte']; //codigo del tipo de soporte  
	$status= $_POST['status_solicitud'];
	$descripcion=$_POST['descripcion']; 
	$solucion=$_POST['solucion'];
	$fecha_inicio=$_SESSION["fecha_inicio"];

	//Pregunto si el estatus de la llamada esta abierta o en proceso
   if ($status==1 or $status==3)
   	{
        $link->query("INSERT INTO t_soporte Values('','$cod_tec','$nombre', '$apellido', '$usuario', '$tsoporte', '$status', '$descripcion', '$solucion', '$fecha_inicio','')") or die("error en Incluir");
    }
   //Pregunto si el estatus de la llamada está cerrada
   elseif ($status==2)
    {
	     $link->query("INSERT INTO t_soporte Values('','$cod_tec', '$nombre', '$apellido', '$usuario', '$tsoporte', '$status','$descripcion', '$solucion', '$fecha_inicio','$fecha_inicio')") or die("error en Incluir");
	}
$consulta_cod="SELECT MAX(cod_soporte) AS mayor_valor FROM t_soporte";
$resul_cod= $link->query($consulta_cod) or die("error consulta");
$campo_cod= $resul_cod->fetch_array();
$cod_soporte= $campo_cod['mayor_valor'];
  
$destinatario = $correo_usu; 
$asunto = "Soporte Técnico Número - ".$cod_soporte. " -Falla:".$descripcion; 
//$cuerpo= "Solución Tomada: <br>". $solucion. "<br> Atendido Por:". $nombre. " ".$apellido;
$cuerpo = ' 
<html> 
<head> 
   <title>Soporte Técnico</title> 
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
$headers .= "From:". $nombre. " " .$apellido. "<". $correo_tec. ">\r\n";

//direcciones que recibián copia 
$headers .= "Cc: fraybaudi@ipcachacao.org.ve\r\n"; 
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
			window.location="consulta_soporte.php";
		 </script>
	    <?php
	break;

	case 2:
	//Actualizacion de Registros
	$link=conectarse ();
		date_default_timezone_set('America/Caracas');
		$fecha_fin= date('Y-m-d');
		
		$cod_soport= $_SESSION['cod_soporte'];
		$solucion=$_POST['solucion'];
		$status=$_POST['status_solicitud'];
		$tipo_sop=$_POST['tsoporte'];
	
		///datos del Técnico de informatica para el envio del correo
		$cod_tec=$_SESSION["cod_tec"];        //codigo del técnico logeado
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
     $link->query("UPDATE t_soporte SET cod_tec='$cod_tec', nombre_tecnico='$nombre', apellido_tecnico='$apellido',  solucion='$solucion', cod_status_solicitud= '$status', cod_tipo_soporte='$tipo_sop', fecha_fin='$fecha_fin' where cod_soporte= $cod_soport") or die("error en Actualizar");	
     }
   else 
     {
	 $link->query("UPDATE t_soporte SET cod_tec='$cod_tec', nombre_tecnico='$nombre', apellido_tecnico='$apellido', solucion='$solucion', cod_status_solicitud= '$status', cod_tipo_soporte='$tipo_sop' where cod_soporte= $cod_soport") or die("error en Actualizar");	
	 }
$destinatario = $correo_usu; 
$asunto = "Soporte Técnico Número - ".$cod_soport. " -Falla:".$descripcion; 
//$cuerpo= "Solución Tomada: <br>". $solucion. "<br> Atendido Por:". $nombre. " ".$apellido;
$cuerpo = ' 
<html> 
<head> 
   <title>Soporte Técnico</title> 
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
$headers .= "Cc: fraybaudi@ipcachacao.org.ve\r\n"; 
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
			window.location="consulta_soporte.php";
		 </script>
	    <?php

	break;
	
	case 3:
		//Inclusion NUEVO SOPORTE del usuario
	  $link=conectarse ();
	  $cod_tec="";
	  $nombre="";         //nombre del técnico
	  $apellido="";   //apellido del técnico
	  //$cod_sop= $_SESSION["cod_sop"];
	  $fecha_inicio=$_SESSION["fecha_inicio"];
	  $direccion=$_SESSION['direccion'];
	  $cod_usu=$_SESSION["cod_usu"];    //codigo del funcionario
	  $tsoporte=$_POST['tsoporte']; //tipo de soporte
	  $status= 1;
	  $descripcion=$_POST['descripcion'];
	  $solucion="";
  
	  $link->query("INSERT INTO t_soporte Values('', '','', '', '$cod_usu', '$tsoporte', '$status','$descripcion','', '$fecha_inicio','')") or die("error en Incluir");
	//header("location: soporte_usuario.php?mensaje=1");
		?>
         <script type="text/javascript">
		 	window.location="soporte_usuario.php";//, "javascript:llamarasincrono('Soporte_usuario.php', 'cuerpo_usu')";
         </script>
        <?php
	//}
	// Seleccionar nombre, apellido y correo del funcionario para enviar el correo 
	  $consulta="SELECT * FROM t_empleado WHERE codigo='$cod_usu' ";
	  $resultado_usu= $link->query ($consulta) or die("error consulta");
	  $campo = $resultado_usu->fetch_array();
	  $nombre_usu=$campo["pnombre"];
	  $apellido_usu=$campo["papellido"];
	  $correo_usu= $campo["correo"];

	// Selecciona el ultimo soporte que se registró
	$consulta_cod="SELECT MAX(cod_soporte) AS mayor_valor FROM t_soporte";
	$resul_cod= $link->query ($consulta_cod) or die("error consulta");
	$campo_cod= $resul_cod;
	$cod_soporte= $campo_cod['mayor_valor'];
		
	$destinatario = 'jreina@ipcachacao.org.ve'; 
	$asunto = "Soporte Técnico Número - ".$cod_soporte. " -Falla:".$descripcion; 
	$cuerpo = ' 
	<html> 
	<head> 
   	<title>Soporte Técnico</title> 
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
	$headers .= "Cc: ipcagraficas@ipcachacao.org.ve, ipcainformatica@ipcachacao.org.ve, fraybaudi@ipcachacao.org.ve\r\n";
	//direcciones que recibirán copia oculta 
	//$headers .= "Bcc: ipcagraficas@ipcachacao.org.ve\r\n"; 
	
	if (mail($destinatario,$asunto,$cuerpo,$headers)){
			echo  "correo correcto";
	}else{	
	echo  "correo incorrecto";
	}
		break;	
	case 4:
	//Eliminacion de Registros
	conectar();
	$cedula=$_POST['cedula'];
	$eliminar="DELETE FROM tabla_usuarios WHERE cedula='$cedula'";
	mysql_db_query($mydb,$eliminar) or die("error en la eliminar");
	header("location: eliminar.php?mensaje=1");	
	break;
}
?>