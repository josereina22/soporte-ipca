<? session_start()?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Soportes Abiertos</title>
<style type="text/css">
#form table tr td .solicitud {
	font-size: 24px;
	text-align: center;
}
body {
	background-image: url();
	font-family: Arial, Helvetica, sans-serif;
	background-color: #9DE3C9;
}
.negrita {
	font-weight: bold;
	font-size: 36px;
	font-family: "Arial Black", Gadget, sans-serif;
	color: #FFF;
}
#form p {
	font-weight: bold;
	font-size: 20px;
	text-align: center;
	color: #000;
	font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>
<body>
<form id="form" method="post" action="">
  <table width="724" border="0" align="center">
    <tr>
		    <td><p class="solicitud">  <span class="negrita">Servicios Abiertos</span></p>		      <p class="destino">
</p></td>
    </tr>
  </table>
  <p>Solicitudes Pendientes</p>
  <table border="0" align="center">
    <tr bgcolor="#65aa72">
      <td></td>
      <td><strong>Nro. de Servicio </strong></td>
      <td><strong>Direcci&oacute;n</strong></td>
      <td><strong>Nombre del Funcionario</strong></td>
      <td><strong>Tipo de Servicio</strong></td>
      <td><strong>Descripci&oacute;n</strong></td>
      <td><strong>Fecha Inicio</strong></td>
    </tr>
    <hr noshade width="100%" align="left" size="1">
    <?php
    include ("conexion.php");
	conectarse(); 
    $consulta="SELECT a.cod_servicio, b.direccion, c.pnombre, c.papellido, d.tipo_servicio, descripcion, fecha_inicio FROM t_servicio AS a, t_direccion AS b, t_empleado AS c, t_tipo_servicio AS d WHERE  c.cod_direccion = b.cod_direccion AND c.codigo=a.cod_usu AND a.cod_tipo_servicio = d.cod_tipo_servicio AND cod_tec_servicio=0 ORDER BY a.cod_servicio DESC"; 
	$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
	$i=0;
	if (!(@mysql_num_rows ($resultados) == 0))
		{
			
			while ($campo = mysql_fetch_array($resultados))
			{
				$cod_servicio=$campo['cod_servicio'];
				$direccion=$campo['direccion'];
				$nombre_u=$campo['pnombre'];
				$apellido_u=$campo['papellido'];
				$tservicio=$campo['tipo_servicio'];
				$descripcion=$campo['descripcion'];
				$fecha_i=$campo['fecha_inicio'];
	?>
    <tr bgcolor="#E1E1E1">
      <td height="21">
        <a href="servicio_abiertos.php?cod_servicio=<?php echo $cod_servicio?>">Asignar</a>
      </td>
      <td><?PHP echo $cod_servicio?></td>
      <td><?PHP echo $direccion?></td>
      <td><?PHP echo $nombre_u," ",$apellido_u?></td>
      <td><?PHP echo $tservicio?></td>
      <td><?PHP echo $descripcion?></td>
      <td><?PHP echo $fecha_i?></td>
    </tr>
    <?php
	 $i++;
			}
		}
	else
	{echo "No  Hay Soportes Pendientes";}
	?>  
  </table>

  <p>Mis Servicios Por Atender</p>
  <table align="center">
    <tr bgcolor="#65aa72">
      <td></td>
	  <td><strong>Nro. de Servicio</strong></td>
      <td><strong>Direcci&oacute;n</strong></td>
      <td><strong>Nombre del Funcionario</strong></td>
      <td><strong>Tipo de Soporte</strong></td>
      <td><strong>Descripci&oacute;n</strong></td>
      <td><strong>Soluci&oacute;n</strong></td>
      <td><strong>Fecha Inicio</strong></td>
    </tr>
    <hr noshade width="100%" align="left" size="1">
  <?php

if (!isset($_SESSION["usu"]))
{ 
	//header("location: index.php");
	  ?>
    <script type="text/javascript">
			window.location="index.php";
		 </script>
	  <?php
}
else
{ 
  $usuario2=$_SESSION['usu'];  
  Conectarse();
    $consulta_cod= "SELECT * FROM t_empleado WHERE usuario='$usuario2'";
	$result_cod= mysql_query ($consulta_cod) or die("error consulta: ".mysql_error());
	$campo_cod = mysql_fetch_array($result_cod);
	$cod_tec= $campo_cod['codigo'];
	$nombre_tec= $campo_cod['pnombre'];
	$apellido_tec= $campo_cod['papellido'];
	
	$consulta="SELECT a.cod_servicio, b.direccion, c.pnombre, c.papellido, d.tipo_servicio, e.status_solicitud, e.cod_status_solicitud, descripcion, solucion, fecha_inicio FROM t_servicio AS a, t_direccion AS b, t_empleado AS c, t_tipo_servicio AS d, t_status_solicitud AS e WHERE  c.cod_direccion = b.cod_direccion AND c.codigo=a.cod_usu AND a.cod_tipo_servicio=d.cod_tipo_servicio AND a.cod_status_solicitud=e.cod_status_solicitud AND cod_tec_servicio='$cod_tec' AND e.cod_status_solicitud <> 2 ORDER BY a.cod_servicio DESC";
	$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
	$i=0;
	if (!(@mysql_num_rows ($resultados) == 0))
		{	
			while ($campo = mysql_fetch_array($resultados))
			{
				$cod_servicio=$campo['cod_servicio'];
				$direccion=$campo['direccion'];
				$nombre_u=$campo['pnombre'];
				$apellido_u=$campo['papellido'];
				$tservicio=$campo['tipo_servicio'];
				$estatus=$campo['status_solicitud'];
				$descripcion=$campo['descripcion'];
				$solucion=$campo['solucion'];				
				$fecha_i=$campo['fecha_inicio'];
				$cod_estatus=$campo['cod_status_solicitud'];
	?>
    <tr bgcolor="#E1E1E1">
	  <td height="21">
	    <?php	
	       if ($cod_estatus==1 or $cod_estatus==3)
           {?>
             <a href="actualizar_servicio.php?cod_servicio=<?php echo $cod_servicio?>">Actualizar</a>
         <?php
		   }
	     ?>	  </td>
      <td><?PHP echo $cod_servicio?></td>
      <td><?PHP echo $direccion?></td>
      <td><?PHP echo $nombre_u," ",$apellido_u?></td>
      <td><?PHP echo $tservicio?></td>
      <td><?PHP echo $descripcion?></td>
      <td><?PHP echo $solucion?></td>
      <td><?PHP echo $fecha_i?></td>
    </tr>
    <?php
	 $i++;
			}
		}
	else
	{echo "No Tienes Servicios Abiertos";} 
}
	?>
  </table>
  <?php
    echo "TOTAL DE REGISTRO ENCONTRADO="," ", $i;
  ?>
</form>
<?php
if (isset($_GET['cod_servicio']))
{
		$cod_servicio= $_GET['cod_servicio'];
mysql_query("UPDATE t_servicio SET cod_tec_servicio='$cod_tec', cod_status_solicitud=3 WHERE cod_servicio= $cod_servicio") or die("error en Actualizar: ".mysql_error());	
//header("location: soporte_abiertos.php");	
?>
<script type="text/javascript">
			window.location="servicio_abiertos.php";
		</script>
<?
}
?>
</body>
</html>