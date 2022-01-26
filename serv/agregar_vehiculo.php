<?php session_start(); ?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Agregar Tipo de Solicitud
</title>
<style type="text/css">
#contenido {
	position: absolute;
	width: 800px;
	height: 800px;
	z-index: 1;
	background-color: #CCCCCC;
	left: 50px;
	top: 0;
}
body {
	background-color: #CCCCCC;
}
</style>
</head>
<body>
<div id="contenido">
<form method="POST" action="case_vehiculo.php">
  <br>
  <br>
  <table width="493" border="1">
    <tr>
    <td width="157">C&oacute;digo del Veh&iacute;culo : </td>
    <td width="320"><input type="Text" name="cod_vehiculo"></td>
  </tr>
  <tr>
    <td>Tipo de Veh&iacute;culo</td>
    <td><?php
	 include ("conexion.php");
	Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="SELECT * FROM t_tipo_vehiculo";
          $result=mysql_query($sSQL);
	desconectarse();
	// Voy imprimiendo el primer select compuesto por los direccions
	echo "<select name='tipo_vehiculo' id='tipo_vehiculo'>";
	echo "<option value='0'>Seleccione</option>";
	while($registro=mysql_fetch_row($result))
	{
		echo "<option value='".$registro[0]."'>".$registro[1]."</option>";
	}
	echo "</select>";
	 ?></td>
  </tr>
  <tr>
    <td>Modelo de Veh&iacute;culo</td>
    <td><?php
	Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="SELECT * FROM t_modelo_vehiculo";
          $result=mysql_query($sSQL);
	desconectarse();
	// Voy imprimiendo el primer select compuesto por los direccions
	echo "<select name='modelo_vehiculo' id='modelo_vehiculo'>";
	echo "<option value='0'>Seleccione</option>";
	while($registro=mysql_fetch_row($result))
	{
		echo "<option value='".$registro[0]."'>".$registro[1]."</option>";
	}
	echo "</select>";
	 ?></td>
  </tr>
  <tr>
    <td>Funcionario</td>
    <td><?php
	Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="SELECT * FROM t_empleado";
          $result=mysql_query($sSQL);
	desconectarse();
	// Voy imprimiendo el primer select compuesto por los direccions
	echo "<select name='cod_empleado' id='cod_empleado'>";
	echo "<option value='0'>Seleccione</option>";
	while($registro=mysql_fetch_row($result))
	{
		echo "<option value='".$registro[0]."'>".$registro[1]." ".$registro[3]."</option>";
	}
	echo "</select>";
	 ?></td>
  </tr>
  <tr>
    <td>Placa</td>
    <td><input type="Text" name="placa"></td>
  </tr>
  <tr>
    <td>A&ntilde;o</td>
    <td><input name="ano" type="Text" value="0000"></td>
  </tr>
  <tr>
    <td>Nro. de Bien</td>
    <td><input name="bien" type="Text" value="0"></td>
  </tr>
  <tr>
    <td colspan="2"><input type="Submit" name="enviar" value="Agregar"></td>
    </tr>
</table>
</form>
<?php
  echo'<table width="800" border="1">';
     echo'<tr>';
     echo'  <td colspan="7"><div align="center">Datos del Vehículo</div></td>';
	 echo'</tr>';
	 echo'<tr>';
	 echo'  <td width="60"><strong>Código del Vehículo</strong></td>';
     echo'  <td width="200"><strong>Tipo de Vehículo</strong></td>';
	 echo'  <td width="200"><strong>Modelo de Vehículo</strong></td>';
	 echo'  <td width="200"><strong>Funcionario</strong></td>';
	 echo'  <td width="200"><strong>Placa</strong></td>';
	 echo'  <td width="200"><strong>Año</strong></td>';
	 echo'  <td width="200"><strong>Nro. de Bien</strong></td>';
     //echo'  <td width="200">&nbsp;</td>';
     echo'</tr>';
	 
	
     conectarse();
	$consulta="SELECT * FROM t_vehiculo ORDER BY cod_vehiculo";
	$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
	if (!(@mysql_num_rows ($resultados) == 0))
		{
			while ($campo = mysql_fetch_array($resultados))
			{
				$cod_vehiculo=$campo['cod_vehiculo'];
				$cod_tipo_vehiculo=$campo['cod_tipo_vehiculo'];
				$cod_modelo_vehiculo=$campo['cod_modelo_vehiculo'];
				$cod_empleado=$campo['cod_empleado'];
				$placa=$campo['placa'];
				$ano=$campo['ano'];
				$bien=$campo['nro_bien'];
				echo'<tr bgcolor="#FFFFFF">' ;
				echo'<td>'.$cod_vehiculo.'</td>';
				echo'<td>';
					$consul="SELECT * FROM t_tipo_vehiculo WHERE cod_tipo_vehiculo= '$cod_tipo_vehiculo'";
					$result= mysql_query($consul) or die("error consulta: ".mysql_error());
					$camp = mysql_fetch_array($result);
					$tipo_vehiculo=$camp['tipo_vehiculo'];
					echo $tipo_vehiculo;
				echo'</td>';
				echo'<td>';
					$consul="SELECT * FROM t_modelo_vehiculo WHERE cod_modelo_vehiculo= '$cod_modelo_vehiculo'";
					$result= mysql_query($consul) or die("error consulta: ".mysql_error());
					$camp = mysql_fetch_array($result);
					$modelo_vehiculo=$camp['modelo_vehiculo'];
					echo $modelo_vehiculo;
				echo'</td>';
				echo'<td>';
					$consul="SELECT * FROM t_empleado WHERE codigo= '$cod_empleado'";
					$result= mysql_query($consul) or die("error consulta: ".mysql_error());
					$camp = mysql_fetch_array($result);
					$nombre=$camp['pnombre'];
					$apellido=$camp['papellido'];
					echo $nombre," ",$apellido;
				echo'</td>';
				echo'<td>';
					echo $placa;
				echo'</td>';
				echo'<td>';
					echo $ano;
				echo'</td>';
				echo'<td>';
					echo $bien;
				echo'</td>';
				/*echo'<td height="21">';
				echo'   <a href=detalle_solicitud.php?cod_tipo_solicitud='.$cod_tipo_solicitud.'>Eliminar</a>';
				echo'</td>';*/
				echo'</tr>';
			}
		}
?>

    
  

    
    
    
  
</table>

</div>
</body>
</html>