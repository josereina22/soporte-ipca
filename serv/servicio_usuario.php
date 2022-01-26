<? session_start()?>
<html>
<head>
<title>Servicio del Usuario</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
body {
	background-color: #9DE3C9;
}
#serv_usuario {
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
<div id="serv_usuario">
<table border="1" align="center">
  <tr>
    <td bgcolor="#EFEFEF" class="blanca" ><div align="center">Mis Servicios Sin Atender</div></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="96" bgcolor="#FFFFFF">
       <table border="0" align="center">
         <tr bgcolor="#80A89E" class="Arial">
           <td bgcolor="">C&oacute;digo de Servicio</td>
           <td>Tipo de Servicio</td>
           <td>Tipo Sede/ Placa Veh&iacute;culo</td>
           <td>Tipo Solicitud</td>
           <td>Descripci&oacute;n</td>
           <td>Fecha Inicio </td>
         </tr>
         <hr noshade width="100%" align="left" size="1">
         <?php
		 	include ("conexion.php");
			conectarse();
            $consulta="SELECT a.cod_servicio, a.cod_tipo_servicio, b.tipo_servicio, a.descripcion, a.fecha_inicio FROM t_servicio as a, t_tipo_servicio as b, t_status_solicitud as c, t_empleado as d WHERE  a.cod_tipo_servicio=b.cod_tipo_servicio AND d.codigo=a.cod_usu AND a.cod_usu='$cod_usu' AND a.cod_status_solicitud=c.cod_status_solicitud AND c.cod_status_solicitud<> 2 ORDER BY a.cod_servicio DESC"; 

        	$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
	     $i=0;
		if (!(@mysql_num_rows ($resultados) == 0))
	 	{
	 		while ($campo = mysql_fetch_array($resultados))
			{
				$cod_servicio=$campo['cod_servicio'];
				$cod_tipo_servicio=$campo['cod_tipo_servicio'];
				$tservicio=$campo['tipo_servicio'];
				$descripcion=$campo['descripcion'];
				$fecha_i=$campo['fecha_inicio'];
				
				if ($cod_tipo_servicio==1) //pregunto si es a vehiculo para detallar el mismo
	  			{
		 	 		$consulta_veh= "SELECT c.placa, b.solic_serv_vehiculo FROM t_serv_vehiculo as a, t_solic_serv_vehiculo as b, t_vehiculo as c WHERE a.cod_servicio='$cod_servicio' AND a.cod_solic_serv_vehiculo=b.cod_solic_serv_vehiculo ORDER BY a.cod_servicio DESC" ;
			 		$resultados_veh= mysql_query ($consulta_veh) or die("error consulta: ".mysql_error());
			 		$campo_veh = mysql_fetch_array($resultados_veh);
			 		$descripcion_tipo= $campo_veh['placa'];
			 		$solic_serv= $campo_veh['solic_serv_vehiculo'];
				}
	  	  		else if ($cod_tipo_servicio==2) //pregunto si es Sede para ofrecer mas detalles
	  			{
			 		$consulta_sed= "SELECT b.solic_serv_sede, c.sede FROM t_serv_sede as a, t_solic_serv_sede as b, t_sede as c WHERE a.cod_servicio='$cod_servicio' AND a.cod_solic_serv_sede=b.cod_solic_serv_sede AND a.cod_sede=c.cod_sede ORDER BY a.cod_servicio DESC" ;
			 		$resultados_sed= mysql_query ($consulta_sed) or die("error consulta: ".mysql_error());
			 		$campo_sed = mysql_fetch_array($resultados_sed);
			 		$descripcion_tipo= $campo_sed['sede'];
			 		$solic_serv= $campo_sed['solic_serv_sede'];
			 }
		?>
       <tr bgcolor="#EFEFEF">
           <td><?PHP echo $cod_servicio?></td>
           <td><?PHP echo $tservicio?></td>
           <td><?PHP echo $descripcion_tipo?></td>
           <td><?PHP echo $solic_serv?></td>
           <td><?PHP echo $descripcion?></td>
           <td><?PHP echo $fecha_i?></td>
      </tr>
      <?php
	   $i++;
			}
		}
	  else
	    {echo "No Hay Servicios Pendientes";}
	  ?>
       </table>

    </td>
  </tr>
  <tr>
    <td height="10" class="blanca">  
	  <?php echo "Total de Servicios por Atender ="," ", $i;?> 
    </td>
  </tr>
  <tr>
    <td height="11" bgcolor="#EFEFEF" class="blanca"><div align="center">Servicio Atendidos</div></td>
  </tr>
  <tr>
    <td height="84" bgcolor="#FFFFFF">
    <table  border="0" align="center">
         <tr bgcolor="#80A89E" class="Arial">
           <td>C&oacute;digo de Servicio</td>
           <td>Atendido Por</td>
           <td>Tipo de Servicio</td>
           <td>Tipo Solicitud</td>
           <td>Descripci&oacute;n</td>
           <td>Soluci&oacute;n</td>
           <td>Fecha Inicio </td>
           <td>Fecha Fin </td>
         </tr>
         <hr noshade width="100%" align="left" size="1">
         <?php		
            $consulta="SELECT a.cod_servicio, a.cod_tec_servicio, a.cod_tipo_servicio, b.tipo_servicio, a.descripcion, a.solucion, a.fecha_inicio, a.fecha_fin FROM t_servicio as a, t_tipo_servicio as b WHERE  a.cod_tipo_servicio=b.cod_tipo_servicio AND a.cod_usu='$cod_usu' AND a.cod_status_solicitud= 2 ORDER BY a.cod_servicio DESC"; 

        	$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
	     $j=0;
		if (!(@mysql_num_rows ($resultados) == 0))
	 	{
	 		while ($campo = mysql_fetch_array($resultados))
			{
				$cod_servicio=$campo['cod_servicio'];
				$cod_tipo_servicio=$campo['cod_tipo_servicio'];
				$cod_tec_serv=$campo['cod_tec_servicio'];
				$tservicio=$campo['tipo_servicio'];
				$descripcion=$campo['descripcion'];
				$solucion=$campo['solucion'];
				$fecha_i=$campo['fecha_inicio'];
				$fecha_f=$campo['fecha_fin'];
				//$cod_estatus=$campo['cod_status'];
				
				$consulta_tec_serv="SELECT * FROM t_empleado WHERE codigo='$cod_tec_serv'";
				$result_tec_serv= mysql_query ($consulta_tec_serv) or die("error consulta: ".mysql_error());
				$campo_tec_serv = mysql_fetch_array($result_tec_serv);
				$nombre_tec_serv= $campo_tec_serv['pnombre'];
				$apellido_tec_serv= $campo_tec_serv['papellido'];
				
				if ($cod_tipo_servicio==1) //pregunto si es a vehiculo para detallar el mismo
	  			{
		 	 		$consulta_veh= "SELECT c.placa, b.solic_serv_vehiculo FROM t_serv_vehiculo as a, t_solic_serv_vehiculo as b, t_vehiculo as c WHERE a.cod_servicio='$cod_servicio' AND a.cod_solic_serv_vehiculo=b.cod_solic_serv_vehiculo ORDER BY a.cod_servicio DESC" ;
			 		$resultados_veh= mysql_query ($consulta_veh) or die("error consulta: ".mysql_error());
			 		$campo_veh = mysql_fetch_array($resultados_veh);
			 		$descripcion_tipo= $campo_veh['placa'];
			 		$solic_serv= $campo_veh['solic_serv_vehiculo'];
				}
	  	  		else if ($cod_tipo_servicio==2) //pregunto si es Sede para ofrecer mas detalles
	  			{
			 		$consulta_sed= "SELECT b.solic_serv_sede, c.sede FROM t_serv_sede as a, t_solic_serv_sede as b, t_sede as c WHERE a.cod_servicio='$cod_servicio' AND a.cod_solic_serv_sede=b.cod_solic_serv_sede AND a.cod_sede=c.cod_sede ORDER BY a.cod_servicio DESC" ;
			 		$resultados_sed= mysql_query ($consulta_sed) or die("error consulta: ".mysql_error());
			 		$campo_sed = mysql_fetch_array($resultados_sed);
			 		$descripcion_tipo= $campo_sed['sede'];
			 		$solic_serv= $campo_sed['solic_serv_sede'];
			 }
		?>
       <tr bgcolor="#CCCCCC">
           <td bgcolor="#EFEFEF"><?PHP echo $cod_servicio?></td>
           <td bgcolor="#EFEFEF"><?PHP echo $nombre_tec_serv," ",$apellido_tec_serv?></td>
           <td bgcolor="#EFEFEF"><?PHP echo $tservicio.': '.$descripcion_tipo?></td>
           <td bgcolor="#EFEFEF"><?PHP echo $solic_serv?></td>
          <td bgcolor="#EFEFEF" id=size1><div id=size1><?PHP echo $descripcion?></div></td>
          <td bgcolor="#EFEFEF" id=size1><div id=size1><?PHP echo $solucion?></div></td>
           <td bgcolor="#EFEFEF"><?PHP echo $fecha_i?></td>
           <td bgcolor="#EFEFEF"><?PHP echo $fecha_f?></td>
      </tr>
      <?php
	   $j++;
			}
		}
	  else
	    {echo "No Tienes Ningun servicio";}
	  ?>
      </table>
    </td>
  </tr>
</table>
  <?php
    echo "Total de Servicios Atendidos="," ", $j;
  ?>
</div>

</body>
</html>