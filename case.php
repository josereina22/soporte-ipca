<?php
session_start();
include ("conexion.php");
$seleccion=$_REQUEST["seleccion"];
switch($seleccion)
{
	case 1:
	//Inclusion de Registros "Empleado"
	$link=conectarse();
	$cod_usu=$_POST['cod_usu'];
	$pnombre=$_POST['pnombre'];
	$snombre=$_POST['snombre'];
	$papellido=$_POST['papellido'];
	$sapellido=$_POST['sapellido'];
	$ced=$_POST['ced'];
	$sexo=$_POST['sexo'];
	$correo=$_POST['correo'];
	$tlf=$_POST['tlf'];
	$dir=$_POST['direccion'];	
	$cargo=$_POST['cargo'];
	//$departamento=$_POST['departamento'];
	$tipoemp=$_POST['tipoemp'];	
	$usu2=$_POST['usu2'];
	$contra=$_POST['contra'];	
	$status_empleado=$_POST['status_empleado'];
	$link->query("INSERT INTO t_empleado Values('', '$pnombre', '$snombre', '$papellido', '$sapellido','$ced','$sexo', '$correo','$tlf','$dir', '$cargo', '$tipoemp', '$status_empleado','$usu2', '$contra')") or die("error en Incluir");

	header("location: incluir.php?mensaje=1");
	break;
	
	case 2:
	//Actualizacion del mismo usuario
	$link=conectarse();
	$codigo_usu=$_SESSION['cod_usu'];
	$pnombre=$_POST['pnombre'];
	$snombre=$_POST['snombre'];
	$papellido=$_POST['papellido'];
	$sapellido=$_POST['sapellido'];
	$ced=$_POST['ced'];
	$sexo=$_POST['sexo'];
	//$dir=$_POST['dir'];
	$correo=$_POST['correo'];
	$tlf=$_POST['tlf'];
	//$departamento=$_POST['departamento'];
	//$estatus=$_POST['estatus'];
	//$tipoemp=$_POST['tipoemp'];	
//	$usu=$_POST['usu'];
	$contra=$_POST['contra'];	
$actualizar= "update t_empleado set PNombre='$pnombre', SNombre='$snombre', PApellido='$papellido', SApellido='$sapellido', Cedula= '$ced', Correo='$correo', ext='$tlf', contrasena='$contra' where Codigo= '$codigo_usu'";
	$link->query($actualizar) or die("error en Actualizar");
	header("location: actualizar_usu.php?mensaje=1");	
	break;
	
	case 3:
	//Eliminacion de Registros
	conectar();
	$cedula=$_POST['cedula'];
	$eliminar="delete from tabla_usuarios where cedula='$cedula'";
	mysql_db_query($mydb,$eliminar) or die("error en la eliminar");
	header("location: eliminar.php?mensaje=1");	
	break;
}
?>

