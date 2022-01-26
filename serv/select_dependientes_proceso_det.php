<?php
session_start();
// Array que vincula los IDs de los selects declarados en el HTML con el nombre de la tabla donde se encuentra su contenido
$listadoSelects=array(
"tservicio"=>"t_tipo_servicio",
"detalle"=>"t_servicio",
);

function validaSelect($selectDestino)
{
	// Se valida que el select enviado via GET exista
	global $listadoSelects;
	if(isset($listadoSelects[$selectDestino])) return true;
	else return false;
}

function validaOpcion($opcionSeleccionada)
{
	// Se valida que la opcion seleccionada por el usuario en el select tenga un valor numerico
	if(is_numeric($opcionSeleccionada)) return true;
	else return false;
}

$selectDestino=$_GET["select"];
$opcionSeleccionada=$_GET["opcion"];

//$_SESSION['$selectDestino'];
if(validaSelect($selectDestino) && validaOpcion($opcionSeleccionada))
{
	//$tabla=$listadoSelects[$selectDestino];
	include("conexion.php");
	conectarse();
	$_SESSION["opcselec_tservicio"]=$opcionSeleccionada;
	if ($opcionSeleccionada==1)
	{
		$consulta=mysql_query("SELECT cod_vehiculo, placa FROM t_vehiculo") or die(mysql_error());
	}
	elseif ($opcionSeleccionada==2)
	{
		$consulta=mysql_query("SELECT cod_sede, sede FROM t_sede") or die(mysql_error());
	}

		desconectarse();
		// Comienzo a imprimir el select
		echo "<select name='detalle' id='detalle' onChange='cargaContenidos2(this.id)'>";
		echo "<option value='0'>Seleccione</option>";
	
	while($registro=mysql_fetch_row($consulta))
	{
		// Convierto los caracteres conflictivos a sus entidades HTML correspondientes para su correcta visualizacion
		$registro[1]=htmlentities($registro[1]);
		// Imprimo las opciones del select
		echo "<option value='".$registro[0]."'>".$registro[1]."</option>";
	}			
	echo "</select>";
}
?>