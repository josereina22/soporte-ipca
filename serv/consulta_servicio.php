<?php
session_start();
	$hayopcion = false; // No hay seleccion por defecto
	if (isset($_POST["opcion"])) $hayopcion = true; //Si hay seleccion opciones
?>
<html>
<head>
<title>Consulta de Soportes</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<style type="text/css">
@import url("jscalendar/calendar-system.css");.hjh {
	font-size: larger;
}
body {
	text-align: center;
	background-image: url();
	background-color: #9DE3C9;
}
#form table tr td {
	text-align: left;
}
#busqueda_serv
 {
	position: absolute;
	width: 200px;
	height: 89px;
	left: 31px;
	top: 14px;
}
#boton {
	position: absolute;
	width: 66px;
	height: 27px;
	top: 108px;
	left: 283px;
}
#resultado_serv {
	position: absolute;
	width: 100%;
	height: 115px;
	left: 0;
	top: 159px;
}
#apDiv1 {
	position: absolute;
	width: 104px;
	height: 81px;
	z-index: 1;
	left: 733px;
	top: 18px;
}
</style>
<!-- import the calendar script -->
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<!-- import the language module -->
<script type="text/javascript" src="jscalendar/lang/calendar-es.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js" /></script>

<script type="text/javascript" src="selects_jquery/jquery.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			// Creamos elemento destino y lo incrustamos en <p class="destino">
			$("p.destino").append('Datos: <select id="destino" name="destino"><option value="-1">Selecciona valor</option></select>');

			// Modificamos el action del formulario a la página receptora.   
			$("form#form").attr("action", "consulta_servicio.php");   //pagina para enviar la inf

			// Definimos la petición de ajax, al fichero selec_servicio.php
			$("#opcion").bind("change", function() {
			    $.post("selec_servicio.php", {opcion: $(this).val(), type: "xml"}, function(xml){
			        $("#destino").empty();
			        $(xml).find("option").each(function(x,el) {
			         $("#destino").append('<option value="'+$(el).attr("value")+'">' +$(el).text() + '</option>');
			        });
			    }, "xml");
			});
		});
	</script>
</head>
<body>

<form id="form" method="post" action="">
 <div id="busqueda_serv">
 <table width="670" bgcolor="#65aa72" border="1">
     <tr>
		 <td width="268" ><p class="opcion"> Seleccionar:
	        <select name="opcion" id="opcion">
		        <option value="-1">Opciones.....
	            <option value="1">T&eacute;cnico Servicio General
                <option value="2">Direcci&oacute;n
	            <option value="3">Nombre del Usuario
                <option value="4">Tipo de Servicio
                <option value="5">Status
                <option value="6">Fecha
            </select>
	        </p>
         </td>
	     <td width="386"><p class="destino">
         </p>
       </td>
    </tr>
     <tr bgcolor="#65aa72">
        <td colspan="2"><div align="center"> Introduce la fecha pulsando sobre la imagen del calendario</div></td>
    </tr>
     <tr>
       <td><label>Fecha Inicio </label>
         <input  name="fecha_i" type="text"id="fecha_i"  readonly/>	
         <img src="jscalendar/img.gif" id="seleci" />
       </td>
       <td width="386"><label>Fecha Fin </label>
         <input  name="fecha_f" type="text" id="fecha_f" readonly/>
         <img src="jscalendar/img.gif" id="selecf" />
         <script type='text/javascript'>
            Calendar.setup({
            inputField: 'fecha_i',
            ifFormat:   '%Y-%m-%d',
            button:     'seleci'
            });
         </script>
       </td>
    </tr>
 </table>
</div>

    <script type="text/javascript">
            Calendar.setup({
            inputField: "fecha_f",
            ifFormat:   "%Y-%m-%d",
            button:     "selecf"
            });
    </script>
  <div id="boton">
		<input type="submit" value="Buscar" />
  </div>
  <div id="resultado_serv">
<table border="1" align="center">
     <tr bgcolor="#65aa72">
       <td> </td>
	   <td>Nro. de Servicio </td>
       <td>Reportado por:</td>
       <td>Tipo de Servicio</td>
       <td>Solicitud</td>
       <td>Falla</td>
       <td>Solucion</td>
       <td>Atendido Por:</td>
       <td>Fecha Inicio </td>
	   <td>Fecha Fin </td>
     </tr>
    <hr noshade width="100%" align="left" size="1">
   <?php
     include ("conexion.php");
     conectarse();
	// Pregunto si se ha opcionado alguna de las opciones, según el caso realizaremos un select a la tabla de servicio
	if (!empty($_POST["opcion"]))
    { 
	 $fecha_i= $_POST["fecha_i"];
	 $fecha_f= $_POST["fecha_f"];
	 //echo $fecha_i, 5, $fecha_f;
     $opciones=$_POST["opcion"];
	 $valor=$_POST["destino"];
	 switch($opciones)
     {
	 case -1:
       {
		  	$consulta="SELECT b.cod_servicio, b.cod_tec_servicio, a.pnombre, a.papellido, c.cod_tipo_servicio, c.tipo_servicio, d.status_solicitud, d.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_servicio as b, t_tipo_servicio as c, t_status_solicitud as d WHERE  a.codigo=b.cod_usu AND b.cod_tipo_servicio =c.cod_tipo_servicio AND b.cod_status_solicitud=d.cod_status_solicitud ORDER BY b.cod_servicio DESC";
		  break;  
	  }
	case 1:
      { 		  
		  $consulta="SELECT b.cod_servicio, b.cod_tec_servicio, a.pnombre, a.papellido, c.cod_tipo_servicio, c.tipo_servicio, d.status_solicitud, d.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_servicio as b, t_tipo_servicio as c, t_status_solicitud as d WHERE  a.codigo=b.cod_usu AND b.cod_tipo_servicio =c.cod_tipo_servicio AND b.cod_status_solicitud=d.cod_status_solicitud AND b.cod_tec_servicio='$valor' AND DATE (b.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f'ORDER BY b.cod_servicio DESC";
		  break;
	  }
    case 2:
      {  
	     $consulta="SELECT b.cod_servicio, b.cod_tec_servicio, a.pnombre, a.papellido, c.cod_tipo_servicio, c.tipo_servicio, d.status_solicitud, d.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_servicio as b, t_tipo_servicio as c, t_status_solicitud as d, t_direccion as e WHERE  a.codigo=b.cod_usu AND b.cod_tipo_servicio =c.cod_tipo_servicio AND b.cod_status_solicitud=d.cod_status_solicitud AND a.cod_direccion = e.cod_direccion AND e.cod_direccion='$valor' AND DATE (b.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f'ORDER BY b.cod_servicio DESC"; 
		  break;
	  }
    case 3:
	  {
		 // echo $opciones, "  ", $valor ;
		 $consulta="SELECT b.cod_servicio, b.cod_tec_servicio, a.pnombre, a.papellido, c.cod_tipo_servicio, c.tipo_servicio, d.status_solicitud, d.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_servicio as b, t_tipo_servicio as c, t_status_solicitud as d, t_direccion as e WHERE  a.codigo=b.cod_usu AND b.cod_tipo_servicio =c.cod_tipo_servicio AND b.cod_status_solicitud=d.cod_status_solicitud AND a.cod_direccion = e.cod_direccion AND a.codigo='$valor' AND DATE (b.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f'ORDER BY b.cod_servicio DESC"; 
		  break;
	  }
	case 4:
      {
		  $consulta="SELECT b.cod_servicio, b.cod_tec_servicio, a.pnombre, a.papellido, c.cod_tipo_servicio, c.tipo_servicio, d.status_solicitud, d.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_servicio as b, t_tipo_servicio as c, t_status_solicitud as d, t_direccion as e WHERE  a.codigo=b.cod_usu AND b.cod_tipo_servicio =c.cod_tipo_servicio AND b.cod_status_solicitud=d.cod_status_solicitud AND a.cod_direccion = e.cod_direccion AND c.cod_tipo_servicio='$valor' AND DATE (b.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f'ORDER BY b.cod_servicio DESC";
		  break;
	  }
    case 5:
	  {
	      $consulta="SELECT b.cod_servicio, b.cod_tec_servicio, a.pnombre, a.papellido, c.cod_tipo_servicio, c.tipo_servicio, d.status_solicitud, d.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_servicio as b, t_tipo_servicio as c, t_status_solicitud as d, t_direccion as e WHERE  a.codigo=b.cod_usu AND b.cod_tipo_servicio =c.cod_tipo_servicio AND b.cod_status_solicitud=d.cod_status_solicitud AND a.cod_direccion = e.cod_direccion AND d.cod_status_solicitud='$valor' AND DATE (b.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f'ORDER BY b.cod_servicio DESC";
		  break;
	  } 
	case 6:
      {
	    $consulta="SELECT c.cod_soporte, c.nombre_tecnico, c.apellido_tecnico, b.direccion, a.pnombre, a.papellido, d.tipo_soporte, e.cod_status_solicitud, e.status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_direccion as b, t_soporte as c, t_tipo_soporte as d, t_status_solicitud as e WHERE  a.cod_direccion = b.cod_direccion AND a.codigo=c.cod_usu AND c.cod_tipo_soporte=d.cod_tipo_soporte AND c.cod_status_solicitud=e.cod_status_solicitud AND DATE (c.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f' ORDER BY c.cod_soporte DESC";
		  break;
	  }
	} //cerrar el switch
  }// cerrar el if
  else
  {  
	$consulta="SELECT b.cod_servicio, b.cod_tec_servicio, a.pnombre, a.papellido, c.cod_tipo_servicio, c.tipo_servicio, d.status_solicitud, d.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_servicio as b, t_tipo_servicio as c, t_status_solicitud as d WHERE  a.codigo=b.cod_usu AND b.cod_tipo_servicio =c.cod_tipo_servicio AND b.cod_status_solicitud=d.cod_status_solicitud ORDER BY b.cod_servicio DESC";
   } 
	$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
	$i=0;
	if (!(@mysql_num_rows ($resultados) == 0))
		{
			while ($campo = mysql_fetch_array($resultados))
			{
				$cod_servicio=$campo['cod_servicio'];	
				$nombre_u=$campo['pnombre'];
				$apellido_u=$campo['papellido'];
				$tservicio=$campo['tipo_servicio'];
				$cod_tipo_servicio=$campo['cod_tipo_servicio'];
				//$status=$campo['status_solicitud'];
				$descripcion=$campo['descripcion'];
				$solucion=$campo['solucion'];
				$fecha_i=$campo['fecha_inicio'];
				$fecha_f=$campo['fecha_fin'];
				$cod_status=$campo['cod_status_solicitud'];
				$cod_tec_servicio=$campo['cod_tec_servicio'];
				
				//consulta para saber el nombre del tecnico de Servicios General segun el cod_tec_servicio
				$result=mysql_query("SELECT * FROM t_empleado WHERE codigo='$cod_tec_servicio'");
				$row = mysql_fetch_array($result);
				$nombre_SG=$row["pnombre"];
				$apellido_SG=$row["papellido"];
				
				if ($cod_tipo_servicio==1)
				{
					$result_veh=mysql_query("SELECT c.tipo_vehiculo, d.solic_serv_vehiculo FROM t_serv_vehiculo AS a, t_vehiculo AS b, t_tipo_vehiculo AS c, t_solic_serv_vehiculo AS d WHERE cod_servicio = '$cod_servicio' AND a.cod_vehiculo=b.cod_vehiculo AND b.cod_tipo_vehiculo=c.cod_tipo_vehiculo AND a.cod_solic_serv_vehiculo= d.cod_solic_serv_vehiculo");
					$row_veh = mysql_fetch_array($result_veh);
					$desc_serv=$row_veh["tipo_vehiculo"];
					$solic_serv=$row_veh["solic_serv_vehiculo"];
				}
				elseif ($cod_tipo_servicio==2)
				{
					$result_sede=mysql_query("SELECT b.sede, c.solic_serv_sede FROM t_serv_sede AS a, t_sede AS b, t_solic_serv_sede AS c WHERE a.cod_servicio = '$cod_servicio' AND a.cod_sede = b.cod_sede AND a.cod_solic_serv_sede = c.cod_solic_serv_sede");
					$row_sede= mysql_fetch_array($result_sede);
					$desc_serv=$row_sede["sede"];
					$solic_serv=$row_sede["solic_serv_sede"];
				}
	?>
<?php	
	if ($cod_status==1)// abierto
           {?>
      		<tr bgcolor="#F14F3D">
	  		<td height="21" bgcolor="#F14F3D">
             <a href="actualizar_servicio.php?cod_servicio=<?php echo $cod_servicio?>">Actualizar</a>
         <?php
		   }
	else if ($cod_status==2)//cerrado
			{?>
      <tr bgcolor="#E8E8E8">
	  		  <td height="21" bgcolor="#E8E8E8">
	        <?php 
			}
    else if ($cod_status==3)//proceso
			{?>
      <tr bgcolor="#FFFFAA">
	    <td height="21" bgcolor="#FFFFAA">
        <a href="actualizar_servicio.php?cod_servicio=<?php echo $cod_servicio?>">Actualizar</a>
            <?php 
			}
			?>
   	    </td>
      <td><?PHP echo $cod_servicio?></td>
      <td><?PHP echo $nombre_u," ",$apellido_u?></td>
      <td><?PHP echo $tservicio,"(",$desc_serv,")"?></td>
      <td><?PHP echo $solic_serv?></td>
      <td><?PHP echo $descripcion?></td>
      <td><?PHP echo $solucion?></td>
      <td><?PHP echo $nombre_SG," ",$apellido_SG?></td>
      <td><?PHP echo $fecha_i?></td>
	  <td><?PHP echo $fecha_f?></td>
    </tr>
    <?php
	 $i++;
			}
		}
	else
	{echo "no se consigio registro";}
	?>
  </table>
  <?php
    echo "TOTAL DE REGISTROS ENCONTRADOS="," ", $i;
  ?>
</div>
</form>
<div id="apDiv1">
  <table width="96" border="1">
    <tr> <td width="74" bgcolor="#F14F3D"><strong>Abierto </strong></td></tr>
    <tr>
      <td bgcolor="#E8E8E8"><strong>Cerrado</strong></td>
    </tr>
    <tr>
      <td bgcolor="#FFFFAA"><strong>En Proceso</strong></td>
    </tr>
  </table>
</div>
</body>
</html>