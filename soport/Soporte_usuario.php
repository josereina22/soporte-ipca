<? session_start()?>
<html>
<head>
<title>Soporte del Usuario</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
body {
	background-color: #93b6e2;
}
#soport_usuario {
	position: absolute;
	width: auto;
	height: auto;
	z-index: 1;
	left: 5px;
	top: 25px;
	background-color: #FFFFFF;
}
</style>
</head>
<body>
<div id="soport_usuario">
<div class="blanca" id="ttl_nom_usu">
    <?php
            $usuario2=$_SESSION['usu'];
			include ("conexion.php");
        	conectarse();
    		$consulta_cod= "SELECT * FROM t_empleado as a, t_direccion as b WHERE usuario='$usuario2' AND a.cod_direccion=b.cod_direccion";
			$result_cod= mysql_query ($consulta_cod) or die("error consulta: ".mysql_error());
			$campo_cod = mysql_fetch_array($result_cod);
			$cod_usu= $campo_cod['codigo'];

	?>
  </div>
<table border="1">
  <tr bgcolor="#E1E1E1">
    <td height="23" class="blanca" ><div align="center">Mis Soportes Por Atender</div></td>
  </tr>
  <tr bgcolor="#999999">
    <td height="96" bgcolor="#FFFFFF">
       <table border="0" align="center">
         <tr bgcolor="#00CCFF" class="Arial">
           <td bgcolor="#93D3FF"><div align="center"><strong>C&oacute;digo de soporte </strong></div></td>
           <td bgcolor="#93D3FF"><div align="center"><strong>Tipo de Soporte</strong></div></td>
           <td bgcolor="#93D3FF"><div align="center"><strong>Estatus</strong></div></td>
           <td bgcolor="#93D3FF"><div align="center"><strong>Descripci&oacute;n</strong></div></td>
           <td bgcolor="#93D3FF"><div align="center"><strong>Fecha Inicio </strong></div></td>
         </tr>
         <hr noshade width="100%" align="left" size="1">
         <?php
            $consulta="SELECT a.cod_soporte,  b.tipo_soporte, c.status_solicitud, a.descripcion, a.fecha_inicio FROM t_soporte as a, t_tipo_soporte as b, t_status_solicitud as c, t_empleado as d WHERE  a.cod_tipo_soporte=b.cod_tipo_soporte AND a.cod_status_solicitud=c.cod_status_solicitud AND d.Codigo=a.cod_usu AND a.cod_usu='$cod_usu' AND c.cod_status_solicitud<> 2 ORDER BY a.cod_soporte DESC"; 

        	$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
	     $i=0;
		if (!(@mysql_num_rows ($resultados) == 0))
	 	{
	 		while ($campo = mysql_fetch_array($resultados))
			{
				$cod_soport=$campo['cod_soporte'];
				$tsoporte=$campo['tipo_soporte'];
				$estatus=$campo['status_solicitud'];
				$descripcion=$campo['descripcion'];
				$fecha_i=$campo['fecha_inicio'];
		?>
       <tr bgcolor="#CCCCCC">
           <td bgcolor="#E1E1E1"><?PHP echo $cod_soport?></td>
           <td bgcolor="#E1E1E1"><?PHP echo $tsoporte?></td>
           <td bgcolor="#E1E1E1"><?PHP echo $estatus?></td>
           <td bgcolor="#E1E1E1"><?PHP echo $descripcion?></td>
           <td bgcolor="#E1E1E1"><?PHP echo $fecha_i?></td>
      </tr>
      <?php
	   $i++;
			}
		}
	  else
	    {echo "No Hay Soportes Pendientes";}
	  ?>
       </table>

    </td>
  </tr>
  <tr>
    <td height="10" class="blanca">  
	  <?php echo "Total de Soporte por Atender ="," ", $i;?> 
    </td>
  </tr>
  <tr bgcolor="#E1E1E1">
    <td height="11" bgcolor="#E1E1E1" class="blanca"><div align="center">Soportes Atendidos</div></td>
  </tr>
  <tr>
    <td height="84" bgcolor="#FFFFFF">
    <table border="0" align="center">
         <tr bgcolor="#00CCFF" class="Arial">
           <td bgcolor="#93D3FF">C&oacute;digo de soporte </td>
           <td bgcolor="#93D3FF">Nombre del T&eacute;cnico</td>
           <td bgcolor="#93D3FF">Tipo de Soporte</td>
           <td bgcolor="#93D3FF">Descripci&oacute;n</td>
           <td bgcolor="#93D3FF">Soluci&oacute;n</td>
           <td bgcolor="#93D3FF">Fecha Inicio </td>
           <td bgcolor="#93D3FF">Fecha Fin </td>
         </tr>
         <hr noshade width="100%" align="left" size="1">
         <?php		
            $consulta="SELECT a.cod_soporte, a.nombre_tecnico, a.apellido_tecnico, b.tipo_soporte, a.descripcion, a.solucion, a.fecha_inicio, a.fecha_fin FROM t_soporte as a, t_tipo_soporte as b WHERE  a.cod_tipo_soporte=b.cod_tipo_soporte AND a.cod_usu='$cod_usu' AND a.cod_status_solicitud= 2 ORDER BY a.cod_soporte DESC"; 

        	$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
	     $j=0;
		if (!(@mysql_num_rows ($resultados) == 0))
	 	{
	 		while ($campo = mysql_fetch_array($resultados))
			{
				$cod_soport=$campo['cod_soporte'];
				$nombre_t=$campo['nombre_tecnico'];
				$apellido_t=$campo['apellido_tecnico'];
				$tsoporte=$campo['tipo_soporte'];
				$descripcion=$campo['descripcion'];
				$solucion=$campo['solucion'];
				$fecha_i=$campo['fecha_inicio'];
				$fecha_f=$campo['fecha_fin'];
				//$cod_estatus=$campo['cod_status'];
		?>
       <tr bgcolor="#CCCCCC">
           <td bgcolor="#E1E1E1"><?PHP echo $cod_soport?></td>
           <td bgcolor="#E1E1E1"><?PHP echo $nombre_t," ",$apellido_t?></td>
           <td bgcolor="#E1E1E1"><?PHP echo $tsoporte?></td>
           <td bgcolor="#E1E1E1" id=size1><div id=size1><?PHP echo $descripcion?></div></td>
           <td bgcolor="#E1E1E1" id=size1><div id=size1><?PHP echo $solucion?></div></td>
           <td bgcolor="#E1E1E1"><?PHP echo $fecha_i?></td>
           <td bgcolor="#E1E1E1"><?PHP echo $fecha_f?></td>
      </tr>
      <?php
	   $j++;
			}
		}
	  else
	    {echo "No Tienes Ningun Soporte";}
	  ?>
      </table>
    </td>
  </tr>
</table>
  <?php
    echo "Total de Soportes Atendidos="," ", $j;
  ?>
</div>
</body>
</html>