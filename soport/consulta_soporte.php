<?php
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
	background-color:#93b6e2;
}
#form table tr td {
	text-align: left;
}
#busqueda {
	position: absolute;
	width: 670px;
	height: 90px;
	left: 29px;
	top: 14px;
	background-color: #5983d8;
}
#boton {
	position: absolute;
	width: 70px;
	height: 31px;
	left: 330px;
	top: 112px;
}
#resultado {
	position: absolute;
	width: auto;
	top: 155px;
	height: auto;
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
			$("form#form").attr("action", "consulta_soporte.php");   //pagina para enviar la inf

			// Definimos la petición de ajax, al fichero selec_soporte.php
			$("#opcion").bind("change", function() {
			    $.post("selec_soporte.php", {opcion: $(this).val(), type: "xml"}, function(xml){
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
  <div id="busqueda">
  <table width="670" border="3" align="center" bordercolor="#0033FF">
     <tr>
		 <td width="330"><p class="opcion"> Seleccionar:
	         <select name="opcion" id="opcion">
		        <option value="-1">Opciones.....
	            <option value="1">C&oacute;digo
                <option value="2">Nombre del T&eacute;cnico
	            <option value="3">Direcci&oacute;n
                <option value="4">Nombre del Usuario
                <option value="5">Tipo de Soporte
                <option value="6">Status
                <option value="7">Fecha
            </select>
	        </p>
         </td>
	     <td width="330"><p class="destino">
         </p>
         </td>
     </tr>
     <tr>
        <td colspan="2"><div align="center"> Introduce la fecha pulsando sobre la imagen del calendario</div></td>
     </tr>
     <tr>
       <td><label> Fecha Inicio </label>
         <input  name="fecha_i" type="text"id="fecha_i"  readonly/>	
         <img src="jscalendar/img.gif" id="seleci" />
       </td>
       <td width="330"><label>Fecha Fin </label>
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
  <p>
  <div id="boton">
    <input type="submit" value="Buscar" />
  </div>
  <div id="resultado">
  <table border="1" align="center">
     <tr bgcolor="#5983d8">
       <td> </td>
	   <td>Nro. de Soporte </td>
       <td>Nombre del Usuario</td>
       <td>Tipo de Soporte y Descripci&oacute;n</td>
       <td>Soluci&oacute;n</td>
       <td>Atendido Por</td>
       <td>Fecha Inicio </td>
	   <td>Fecha Fin </td>
     </tr>
    <hr noshade width="100%" align="left" size="1">
   <?php
     include ("../conexion.php");
     $link = conectarse();
	// Pregunto si se ha opcionado alguna de las opciones, según el caso realizaremos un select a la tabla de soporte
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
		  	$consulta="SELECT c.cod_soporte, c.nombre_tecnico, c.apellido_tecnico, b.direccion, a.pnombre, a.papellido, d.tipo_soporte, e.status_solicitud, e.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_direccion as b, t_soporte as c, t_tipo_soporte as d, t_status_solicitud as e WHERE  a.cod_direccion = b.cod_direccion AND a.codigo=c.cod_usu AND c.cod_tipo_soporte =d.cod_tipo_soporte AND c.cod_status_solicitud=e.cod_status_solicitud AND DATE (c.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f' ORDER BY c.cod_soporte DESC";
		  break;  
	  }
	case 1:
      { 
		  $consulta="SELECT c.cod_soporte, c.nombre_tecnico, c.apellido_tecnico, b.direccion, a.pnombre, a.papellido, d.tipo_soporte, e.status_solicitud, e.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_direccion as b, t_soporte as c, t_tipo_soporte as d, t_status_solicitud as e WHERE a.cod_direccion = b.cod_direccion AND a.codigo=c.cod_usu AND c.cod_tipo_soporte=d.cod_tipo_soporte AND c.cod_status_solicitud=e.cod_status_solicitud AND cod_soporte='$valor' ORDER BY c.cod_soporte DESC";
		  break;
	  }
    case 2:
      {  
	      $consulta="SELECT c.cod_soporte, c.nombre_tecnico, c.apellido_tecnico, b.direccion, a.pnombre, a.papellido, d.tipo_soporte, e.status_solicitud,e.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_direccion as b, t_soporte as c, t_tipo_soporte as d, t_status_solicitud as e WHERE  a.cod_direccion = b.cod_direccion AND a.codigo=c.cod_usu AND c.cod_tipo_soporte=d.cod_tipo_soporte AND c.cod_status_solicitud=e.cod_status_solicitud AND c.cod_tec='$valor' AND DATE (c.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f' ORDER BY c.cod_soporte DESC"; 
		  break;
	  }
    case 3:
	  {
		 // echo $opciones, "  ", $valor ;
		  $consulta="SELECT c.cod_soporte, c.nombre_tecnico, c.apellido_tecnico, b.direccion, a.pnombre, a.papellido, d.tipo_soporte, e.status_solicitud,e.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_direccion as b, t_soporte as c, t_tipo_soporte as d, t_status_solicitud as e WHERE  a.cod_direccion = b.cod_direccion AND a.codigo=c.cod_usu AND c.cod_tipo_soporte=d.cod_tipo_soporte AND c.cod_status_solicitud=e.cod_status_solicitud AND b.cod_direccion='$valor' AND DATE (c.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f' ORDER BY c.cod_soporte DESC";
		  break;
	  }
	case 4:
      {
		  $consulta="SELECT c.cod_soporte, c.nombre_tecnico, c.apellido_tecnico, b.direccion, a.pnombre, a.papellido, d.tipo_soporte, e.status_solicitud,e.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_direccion as b, t_soporte as c, t_tipo_soporte as d, t_status_solicitud as e WHERE  a.cod_direccion = b.cod_direccion AND a.codigo=c.cod_usu AND c.cod_tipo_soporte=d.cod_tipo_soporte AND c.cod_status_solicitud=e.cod_status_solicitud AND Codigo='$valor' AND DATE (c.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f' ORDER BY c.cod_soporte DESC";
		  break;
	  }
    case 5:
	  {
	      $consulta="SELECT c.cod_soporte, c.nombre_tecnico, c.apellido_tecnico, b.direccion, a.pnombre, a.papellido, d.tipo_soporte, e.status_solicitud,e.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_direccion as b, t_soporte as c, t_tipo_soporte as d, t_status_solicitud as e WHERE  a.cod_direccion = b.cod_direccion AND a.codigo=c.cod_usu AND c.cod_tipo_soporte=d.cod_tipo_soporte AND c.cod_status_solicitud=e.cod_status_solicitud AND d.cod_tipo_soporte='$valor' AND DATE (c.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f' ORDER BY c.cod_soporte DESC";
		  break;
	  } 
	case 6:
      {
	     // $consulta="SELECT c.cod_soporte, c.nombre_tecnico, c.apellido_tecnico, b.nombre_direccion, a.PNombre, a.PApellido, d.nombre_servicio, e.nombre_status,e.cod_status, descripcion, fecha_inicio, fecha_fin FROM t_empleado as a, t_direccion as b, t_soporte as c, t_servicio as d, t_status as e WHERE  a.cod_direccion = b.cod_direccion "; 
		  break;
	  }
    case 7:
	  {
	      $consulta="SELECT c.cod_soporte, c.nombre_tecnico, c.apellido_tecnico, b.direccion, a.pnombre, a.papellido, d.tipo_soporte, e.cod_status_solicitud, e.status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_direccion as b, t_soporte as c, t_tipo_soporte as d, t_status_solicitud as e WHERE  a.cod_direccion = b.cod_direccion AND a.codigo=c.cod_usu AND c.cod_tipo_soporte=d.cod_tipo_soporte AND c.cod_status_solicitud=e.cod_status_solicitud AND DATE (c.fecha_inicio) BETWEEN '$fecha_i' AND '$fecha_f' ORDER BY c.cod_soporte DESC";
		  break;
	  }
	} //cerrar el switch
  }// ceerar el if
  else
  {  
	$consulta="SELECT c.cod_soporte, c.nombre_tecnico, c.apellido_tecnico, b.direccion, a.pnombre, a.papellido, d.tipo_soporte, e.status_solicitud, e.cod_status_solicitud, descripcion, solucion, fecha_inicio, fecha_fin FROM t_empleado as a, t_direccion as b, t_soporte as c, t_tipo_soporte as d, t_status_solicitud as e WHERE  a.cod_direccion = b.cod_direccion AND a.codigo=c.cod_usu AND c.cod_tipo_soporte=d.cod_tipo_soporte AND c.cod_status_solicitud=e.cod_status_solicitud ORDER BY c.cod_soporte DESC";
   } 
	$resultados= $link->query($consulta) or die("error consulta");
	$i=0;
	if ($resultados->num_rows>0)
		{
			while ($campo = $resultados->fetch_array())
			{
				$cod_soport=$campo['cod_soporte'];
				$nombre_t=$campo['nombre_tecnico'];
				$apellido_t=$campo['apellido_tecnico'];
				$direccion=$campo['direccion'];
				$nombre_u=$campo['pnombre'];
				$apellido_u=$campo['papellido'];
				$servicio=$campo['tipo_soporte'];
				$status=$campo['status_solicitud'];
				$descripcion=$campo['descripcion'];
				$solucion=$campo['solucion'];
				$fecha_i=$campo['fecha_inicio'];
				$fecha_f=$campo['fecha_fin'];
				$cod_status=$campo['cod_status_solicitud'];
	?>
    <tr bgcolor="#CCCCCC">
	  <td height="21">
	    <?php	
	       if ($cod_status==1 or $cod_status==3)
           {?>
             <a href="actualizar_sop.php?cod_soport=<?php echo $cod_soport?>">Actualizar</a>
         <?php
		   }
	     ?>	  </td>
      <td><?PHP echo $cod_soport?></td>
      <td><?PHP echo $nombre_u," ",$apellido_u?></td>
      <td><?PHP echo $servicio.': '.$descripcion?></td>
      <td><?PHP echo $solucion?></td>
      <td><?PHP echo $nombre_t," ",$apellido_t?></td>
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
    echo "TOTAL DE REGISTRO ENCONTRADO="," ", $i;
  ?>
  </div>
</form>
</body>
</html>