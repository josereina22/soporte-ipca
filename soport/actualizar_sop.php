<? session_start()?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Soporte</title>
<style type="text/css">
.centrar {
	text-align: center;
}
body {
	background-image: url(imagenes/PowerPlugs%20BGs%201%20B05B.jpg);
}

#contenedor_sopor {
	position: absolute;
	width: 908px;
	height: 500px;
	z-index: 1;
	left: 0;
	top: 0;
	background-image: url(imagen/soporte.jpg);
}
#soporte {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 2;
	top: 68px;
	left: 161px;
}
</style>

<script type="text/javascript"> 
function valida_tec(){
    //valido el tipo de soporte
    if (document.form_llenar.tsoporte.selectedIndex==0){
       alert("Debe seleccionar un tipo de Soporte.")
       document.form_llenar.tsoporte.focus()
       return false;
    }    
	//valido descripcion
    if (document.form_llenar.descripcion.value.length==0){
       alert("Colocar una breve descripción sobre la solicitud")
       document.form_llenar.descripcion.focus()
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
<div id="contenedor_sopor">
<?php
  include ("../conexion.php");
  $link=Conectarse(); 
  $cod_soport=$_GET['cod_soport'];
  $_SESSION['cod_soporte']=$cod_soport;
  $consulta="SELECT a.cod_tec, a.nombre_tecnico, a.apellido_tecnico, b.direccion, c.pnombre, c.papellido, c.correo, d.cod_tipo_soporte, e.status_solicitud, descripcion, fecha_inicio FROM t_soporte as a, t_direccion as b, t_empleado as c, t_tipo_soporte as d, t_status_solicitud as e WHERE  b.cod_direccion = c.cod_direccion AND c.codigo=a.cod_usu AND a.cod_tipo_soporte=d.cod_tipo_soporte AND a.cod_status_solicitud=e.cod_status_solicitud AND cod_soporte='$cod_soport'";
  $resultados= $link->query($consulta) or die("error consulta");
	$campo = $resultados->fetch_array();
			$cod_tec=$campo['cod_tec'];
			$nombre_t=$campo['nombre_tecnico'];
			$apellido_t=$campo['apellido_tecnico'];
			$direccion=$campo['direccion'];
			$nombre_u=$campo['pnombre'];
			$apellido_u=$campo['papellido'];
			$correo_usu = $campo['correo'];
			$cod_tsoporte=$campo['cod_tipo_soporte'];
			$estatus=$campo['status_solicitud'];
			$descripcion=$campo['descripcion'];
			$fecha_i=$campo['fecha_inicio'];
			
			//asingo el tecnico q esta conectado
			$usuario=$_SESSION['usu'];
			
			//Datos Usado para el envio del Correo "Tecnico"
			$result=$link->query("SELECT * FROM t_empleado WHERE usuario= '$usuario'");
			$row = $result->fetch_array();
			$cod_tec=$row["codigo"];
		    $nombre_t=$row["pnombre"];
			$apellido_t=$row["papellido"];
			$correo_tec=$row["correo"];
			$_SESSION["cod_tec"]=$cod_tec;
			$_SESSION["nombre_tec"]=$nombre_t;
			$_SESSION["apellido_tec"]=$apellido_t;
			$_SESSION["correo_tec"]=$correo_tec;
   mysqli_free_result($result); 
   desconectarse($link);
			          
			  //Datos Usado para el envio del Correo Usuario
			  $_SESSION["correo_usu"]=$correo_usu;
			  $_SESSION["descripcion"]=$descripcion;
			  $_SESSION["nombre_usu"]= $nombre_u;
			  $_SESSION["apellido_usu"]= $apellido_u;
?>
<div id="soporte">
<form name="form_act" method="post" action="case_soporte.php">
  <table width="556" border="0" align="center">
    <tr>
      <td height="46" colspan="5" bgcolor="#8FDBF8"><label>
          <div align="center"> <strong><em>Soporte T&eacute;cnico</em></strong> </div>
        </label></td>
    </tr>
    <tr>
      <td width="179" bgcolor="#CCCCCC"><p>
          <label>Nombre Del T&eacute;cnico: </label>
      </p></td>
      <td width="84" bgcolor="#CCCCCC"><?php echo $nombre_t ," ", $apellido_t?> </td>
      <td width="84" bgcolor="#CCCCCC"><label>Nro Soporte: </label>
      </td>
      <td width="47" bgcolor="#CCCCCC"><label>
        <?php 
		  echo $cod_soport;
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
      <td bgcolor="#8FDBF8"><label>Tipo de Soporte:</label></td>
      <td colspan="4" bgcolor="#8FDBF8"><?php 
		  $link=Conectarse();
		  $sSQL="Select * From t_tipo_soporte Order By cod_tipo_soporte";
          $result=$link->query($sSQL);
          echo '<select name="tsoporte">';
          //Generamos el menu desplegable
		  $i=1;
          while ($row= $result->fetch_array())
          {
			if(	$cod_tsoporte==$i)
				{
					echo '<option selected=selected value='.$row["cod_tipo_soporte"].'>'.$row["tipo_soporte"];
				}
			else 
				{
					echo '<option value='.$row["cod_tipo_soporte"].'>'.$row["tipo_soporte"];
			    }
				$i++;
		  }
       ?>   
      </td>
    </tr>
    <tr>
      <td bgcolor="#CCCCCC"><label>Estatus:</label></td>
      <td colspan="4" bgcolor="#CCCCCC"><?php 
	       $link=Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select * From t_status_solicitud where status_solicitud<> 'Abierto' Order By status_solicitud";
          $result=$link->query($sSQL);
          echo '<select name="status_solicitud">';
          //Generamos el menu desplegable
          while ($row= $result->fetch_array())
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
</form>
</div>
</div>
</body>
</html>