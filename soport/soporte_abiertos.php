<? session_start()?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Soportes Abiertos</title>
<style type="text/css">
#form table tr td .solicitud {
	font-size: 20px;
	text-align: center;
}
body {
	background-image: url();
	font-family: Arial, Helvetica, sans-serif;
	background-color: #93b6e2;
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
#titulo {
	position: absolute;
	width: 360px;
	height: 50px;
	left: 50%;
	top: 0;
	margin-left: -180px; 
	z-index: 1;
}
</style>
</head>
<body>
  <div id="titulo">
	<p class="solicitud"> <span class="negrita">Soportes Abiertos</span></p>
  </div>
<form id="form" method="post" action="">

  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>Solicitudes Pendientes</p>
  
  <table border="1" align="center">
    <tr bgcolor="#5983d8">
      <td ></td>
      <td ><strong>Nro. de soporte </strong></td>
      <td ><strong>Direcci&oacute;n</strong></td>
      <td ><strong>Nombre del Funcionario</strong></td>
      <td ><strong>Tipo de Soporte</strong></td>
      <td ><strong>Descripci&oacute;n</strong></td>
      <td ><strong>Fecha Inicio </strong></td>
    </tr>
    
    <?php
    include ("../conexion.php");
		$link=Conectarse(); 
    $consulta="SELECT a.cod_soporte, b.direccion, c.pnombre, c.papellido, d.tipo_soporte, descripcion, fecha_inicio FROM t_soporte as a, t_direccion as b, t_empleado as c, t_tipo_soporte as d WHERE  c.cod_direccion = b.cod_direccion AND c.codigo=a.cod_usu AND a.cod_tipo_soporte = d.cod_tipo_soporte AND cod_tec=0 ORDER BY a.cod_soporte DESC"; 
	$resultados= $link->query($consulta) or die("error consulta");
	$i=0;
	if ($resultados->num_rows>0)
		{
			while ($campo=$resultados->fetch_array())
			{
				$cod_soport=$campo['cod_soporte'];
				$direccion=$campo['direccion'];
				$nombre_u=$campo['pnombre'];
				$apellido_u=$campo['papellido'];
				$tsoporte=$campo['tipo_soporte'];
				$descripcion=$campo['descripcion'];
				$fecha_i=$campo['fecha_inicio'];
	?>
    <tr bgcolor="#E1E1E1">
      <td height="21">
        <a href="soporte_abiertos.php?cod_soport=<?php echo $cod_soport?>">Asignar</a>
      </td>
      <td><?PHP echo $cod_soport?></td>
      <td><?PHP echo $direccion?></td>
      <td><?PHP echo $nombre_u," ",$apellido_u?></td>
      <td><?PHP echo $tsoporte?></td>
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

<hr noshade width="100%" align="left" size="1">
  
  <p>Mis Soportes Abiertos  </p>
  
  <table border="1" align="center">
    <tr bgcolor="#5983d8" align="center">
      <td> </td>
	  <td><strong>Nro de soporte</strong></td>
      <td><strong>Direcci&oacute;n</strong></td>
      <td><strong>Nombre del Funcionario</strong></td>
      <td><strong>Tipo de Soporte</strong></td>
      <td><strong>Estatus</strong></td>
      <td><strong>Descripci&oacute;n</strong></td>
      <td><strong>Soluci&oacute;n</strong></td>
      <td><strong>Fecha Inicio</strong></td>
    </tr>

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
  $link = Conectarse();
    $consulta_cod= "SELECT * FROM t_empleado WHERE usuario='$usuario2'";
	$result_cod= $link->query($consulta_cod) or die("error consulta");
	$campo_cod = $result_cod->fetch_array();
	$cod_tec= $campo_cod['codigo'];
	$nombre_tec= $campo_cod['pnombre'];
	$apellido_tec= $campo_cod['papellido'];
	
	$consulta="SELECT a.cod_soporte, b.direccion, c.pnombre, c.papellido, d.tipo_soporte, e.status_solicitud, e.cod_status_solicitud, descripcion, solucion, fecha_inicio FROM t_soporte as a, t_direccion as b, t_empleado as c, t_tipo_soporte as d, t_status_solicitud as e WHERE  c.cod_direccion = b.cod_direccion AND c.codigo=a.cod_usu AND a.cod_tipo_soporte=d.cod_tipo_soporte AND a.cod_status_solicitud=e.cod_status_solicitud AND cod_tec='$cod_tec' AND e.cod_status_solicitud <> 2 ORDER BY a.cod_soporte DESC";
	$resultados= $link->query($consulta) or die("error consulta");
	$i=0;
	if ($resultados->num_rows>0)
		{	
			while ($campo=$resultados->fetch_array())
			{
				$cod_soport=$campo['cod_soporte'];
				$direccion=$campo['direccion'];
				$nombre_u=$campo['pnombre'];
				$apellido_u=$campo['papellido'];
				$tsoporte=$campo['tipo_soporte'];
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
             <a href="actualizar_sop.php?cod_soport=<?php echo $cod_soport?>">Actualizar</a>
         <?php
		   }
	     ?>	  </td>
      <td><?PHP echo $cod_soport?></td>
      <td><?PHP echo $direccion?></td>
      <td><?PHP echo $nombre_u," ",$apellido_u?></td>
      <td><?PHP echo $tsoporte?></td>
      <td><?PHP echo $estatus?></td>
      <td><?PHP echo $descripcion?></td>
      <td><?PHP echo $solucion?></td>
      <td><?PHP echo $fecha_i?></td>
    </tr>
    <?php
	 $i++;
			}
		}
	else
	{echo "No tienes Soportes Abiertos";} 
}
	?>
  </table>
  <?php
    echo "TOTAL DE REGISTRO ENCONTRADO="," ", $i;
  ?>
</form>
<?php
if (isset($_GET['cod_soport'])) {
		$cod_soport= $_GET['cod_soport'];
mysql_query("UPDATE t_soporte SET cod_tec='$cod_tec', nombre_tecnico='$nombre_tec', apellido_tecnico='$apellido_tec', cod_status_solicitud=3 WHERE cod_soporte= $cod_soport") or die("error en Actualizar: ".mysql_error());	
//header("location: soporte_abiertos.php");	
?>
       <script type="text/javascript">
			window.location="soporte_abiertos.php";
		</script>
<?php } ?>
</body>
</html>