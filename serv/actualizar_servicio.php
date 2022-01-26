<? session_start()?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Servicio</title>
<style type="text/css">
.centrar {
	text-align: center;
}
body {
	background-image: url(imagen/servicio.jpg);
}
#servicio {
	position: absolute;
	width: 553px;
	height: 115px;
	z-index: 1;
	left: 170px;
	top: 50px;
}
</style>

<script type="text/javascript"> 
function valida_tec(){
   	//valido la solucion
    if (document.form_llenar.solucion.value.length==0){
       alert("Colocar una breve solucion sobre la falla reportada")
       document.form_llenar.solucion.focus()
       return false;
    }
    //el formulario se envia
    alert("Gracias por su solicitud, acepte y espere a que se le notifique a informática");
    document.form_llenar.submit();
	return true;
} 
</script>

</head>

<body>
<?php
  include ("conexion.php");
  $link=Conectarse(); 
  $cod_servicio=$_GET['cod_servicio'];
  $_SESSION['cod_servicio']=$cod_servicio;
  $consulta="SELECT a.cod_tec_servicio, b.direccion, c.pnombre, c.papellido, c.correo, d.cod_tipo_servicio, e.status_solicitud, descripcion, fecha_inicio FROM t_servicio AS a, t_direccion AS b, t_empleado AS c, t_tipo_servicio AS d, t_status_solicitud AS e WHERE b.cod_direccion = c.cod_direccion AND c.codigo=a.cod_usu AND a.cod_tipo_servicio=d.cod_tipo_servicio AND a.cod_status_solicitud=e.cod_status_solicitud AND cod_servicio='$cod_servicio'";
  $resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
	$campo = mysql_fetch_array($resultados);
			//$cod_tec_servicio=$campo['cod_tec_servicio'];
			$direccion=$campo['direccion'];
			$nombre_u=$campo['pnombre'];
			$apellido_u=$campo['papellido'];
			$correo_usu = $campo['correo'];
			$cod_tservicio=$campo['cod_tipo_servicio'];
			$estatus=$campo['status_solicitud'];
			$descripcion=$campo['descripcion'];
			$fecha_i=$campo['fecha_inicio'];
			
			//asingo el tecnico q esta conectado
			$usuario=$_SESSION['usu'];
			
			//Datos Usado para el envio del Correo "Tecnico"
    		$result=mysql_query("SELECT * FROM t_empleado WHERE usuario= '$usuario'",$link);
  			$row = mysql_fetch_array($result);
			$cod_tec_servicio=$row["codigo"];
		    $nombre_t=$row["pnombre"];
			$apellido_t=$row["papellido"];
			$correo_tec=$row["correo"];
			$_SESSION["nombre_tec"]=$nombre_t;
			$_SESSION["apellido_tec"]=$apellido_t;
			$_SESSION["cod_tec_servicio"]=$cod_tec_servicio;
			$_SESSION["correo_tec"]=$correo_tec;
   mysql_free_result($result); 
   desconectarse();
           
			  //Datos Usado para el envio del Correo Usuario
			  $_SESSION["correo_usu"]=$correo_usu;
			  $_SESSION["descripcion"]=$descripcion;
			  $_SESSION["nombre_usu"]= $nombre_u;
			  $_SESSION["apellido_usu"]= $apellido_u;
?>
<form name="form_act" method="post" action="case_servicio.php">
<div id="servicio">
<table width="553" border="0" align="center">
    <tr>
      <td height="46" colspan="5" bgcolor="#8FDBF8"><label>
          <div align="center"> <strong><em>Sevicios General</em></strong> </div>
        </label></td>
    </tr>
    <tr>
      <td width="179" bgcolor="#CCCCCC"><p>
          <label>Nombre Del T&eacute;cnico: </label>
      </p></td>
      <td width="84" bgcolor="#CCCCCC"><?php echo $nombre_t ," ", $apellido_t?> </td>
      <td width="84" bgcolor="#CCCCCC"><label>Nro Servicio: </label>
      </td>
      <td width="47" bgcolor="#CCCCCC"><label>
        <?php 
		  echo $cod_servicio;
	  ?>
      </label></td>
      <td width="140" bgcolor="#CCCCCC"><label>Fecha:
        <?php
		echo $fecha_i;
		?>
            <br>
      </label></td>
    </tr>
    <tr>
      <td height="24" bgcolor="#8FDBF8"><label> Direcci&oacute;n:</label></td>
      <td colspan="4" bgcolor="#8FDBF8"><div id="demoIzq"><?php echo $direccion ?></div></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC">Nombre del Funcionario: </td>
      <td colspan="4" bgcolor="#CCCCCC"><?php echo $nombre_u ," ", $apellido_u?> </td>
    </tr>
    <tr>
      <td bgcolor="#8FDBF8"><label>Tipo de Servicio:</label></td>
      <td colspan="4" bgcolor="#8FDBF8"><?php 
		  $link=Conectarse();
		  $sSQL="Select * From t_tipo_servicio WHERE cod_tipo_servicio= '$cod_tservicio'";
          $result=mysql_query($sSQL);
          /*echo '<select name="tservicio">';
          //Generamos el menu desplegable
		  $i=1;
          while ($row=mysql_fetch_array($result))
          {
			if(	$cod_tservicio==$i)
				{echo '<option selected= selected value='.$row["cod_tipo_servicio"].'>'.$row["tipo_servicio"];}
			else {echo '<option value='.$row["cod_tipo_servicio"].'>'.$row["tipo_servicio"];}
			$i++;
		  }
		  */
		  $row=mysql_fetch_array($result);
		  $tipo_servicio=$row["tipo_servicio"];
		  echo $tipo_servicio;
		  if($cod_tservicio==1)
		    { $consul_veh="SELECT b.placa, c.solic_serv_vehiculo FROM t_serv_vehiculo AS a, t_vehiculo AS b, t_solic_serv_vehiculo AS c WHERE cod_servicio ='$cod_servicio' AND a.cod_vehiculo = b.cod_vehiculo AND a.cod_solic_serv_vehiculo = c.cod_solic_serv_vehiculo";
		    $result_veh=mysql_query($consul_veh);
		    $row_veh=mysql_fetch_array($result_veh);
		    $detalle=$row_veh["placa"];
		    $solicitu_serv=$row_veh["solic_serv_vehiculo"];}	
		   elseif($cod_tservicio==2)
		    { $consul_sede="SELECT b.sede, c.solic_serv_sede FROM t_serv_sede AS a, t_sede AS b, t_solic_serv_sede AS c WHERE cod_servicio ='$cod_servicio' AND a.cod_sede= b.cod_sede AND a.cod_solic_serv_sede= c.cod_solic_serv_sede";
		    $result_sede=mysql_query($consul_sede);
		    $row_sede=mysql_fetch_array($result_sede);
		    $detalle=$row_sede["sede"];
		    $solicitu_serv=$row_sede["solic_serv_sede"];}	
		  ?>   
          
      </td>
    </tr>
    <tr>
      <td bgcolor="#8FDBF8">Detalle:</td>
      <td colspan="4" bgcolor="#8FDBF8"><?php echo $detalle ?></td>
    </tr>
    <tr>
      <td bgcolor="#8FDBF8">Tipo de Solicitud:</td>
      <td colspan="4" bgcolor="#8FDBF8"><?php echo $solicitu_serv ?></td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><label>Estatus:</label></td>
      <td colspan="4" bgcolor="#CCCCCC"><?php 
	       $link=Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select * From t_status_solicitud where status_solicitud<> 'Abierto' Order By status_solicitud";
          $result=mysql_query($sSQL);
          echo '<select name="status_solicitud">';
          //Generamos el menu desplegable
          while ($row=mysql_fetch_array($result))
          {echo '<option value='.$row["cod_status_solicitud"].'>'.$row["status_solicitud"];}
	  ?>
      </td>
    </tr>
    <tr>
      <td height="21" bgcolor="#8FDBF8"><div align="center">
          <label>Descripci&oacute;n:<br>
          </label>
      </div></td>
      <td height="21" colspan="4" bgcolor="#8FDBF8"><label><?php echo $descripcion?> </label></td>
    </tr>
    <tr>
      <td height="53" colspan="5" bgcolor="#CCCCCC"><div align="center"> <label>Soluci&oacute;n de la Falla: </label> <br> <textarea name="solucion" cols="70" rows="5" id="solucion"></textarea></div></td>
    </tr>
    <tr>
      <td height="31" colspan="5"><div align="center">
          <input type="submit" name="Submit" value="Guardar">
          <input name="seleccion" type="hidden" id="seleccion" value="2">
      </div></td>
    </tr>
  </table>
 </div>
</form>
</body>
</html>