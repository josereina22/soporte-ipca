<?php session_start();?>
<html>
<head>
<title>Soporte</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript"> 
function valida_envia(){
    //valido el tipo de servicio
    if (document.form_llenar.tsoporte.selectedIndex==0){
       alert("Debe seleccionar un tipo de Soporte.")
       document.form_llenar.tsoporte .focus()
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
<style type="text/css">
body {
	background-image: url();
}
#contenedor {
	position: absolute;
	width: 600px;
	height: 380px;
	z-index: 1;
	background-image: url(imagen/soporte2.gif);
	top: 50%;
	left: 50%;
	margin-left: -300px;
	margin-top: -190px;
}
#contenedor_serv {
	position: absolute;
	width: 100%;
	height: 500;
	z-index: 2;
	background-color: #93b6e2;
	left: 0;
	top: 0;
}
</style>
</head>
<body>
<div id="contenedor_serv">
<?php 
  include("conexion.php");
  $usuario2=$_SESSION['usu'];  
  $link=Conectarse(); 
  $result=mysql_query("select * from t_empleado where usuario='$usuario2'",$link); 
  $row = mysql_fetch_array($result);
  $cod_usu=$row["codigo"];
  $_SESSION["cod_usu"]=$cod_usu; //codidgo de usuario para insertar en la tabla soporte
  $nombre=$row["pnombre"];
  $_SESSION["nombre"]=$nombre;
  $apellido = $row["papellido"];
  $_SESSION["apellido"]=$apellido;
  mysql_free_result($result); 
  mysql_close($link);
  $cod_dir=$row["cod_direccion"];
  $_SESSION["direccion"]=$cod_dir; //codigo de direccion para insertar en sorporte 
?>
<div id="contenedor">
<form onSubmit="return valida_envia()" name="form_llenar" action="case_soporte.php" method="POST" >
<p>&nbsp;</p>
<table width="561" border="0" align="center">
  <tr>
      <td height="46" colspan="2" bgcolor="#EFEFEF">
       <label>
        <div align="center" class="titulo">
          <strong>Solicitud de Soporte T&eacute;cnico</strong>
        </div>
       </label>
      </td>
    </tr>
    <tr>
      <td bgcolor="#93D3FF">
        <label>Fecha de Solicitud: </label>
      </td>
      <td width="312"  bgcolor="#93D3FF">
        <label>
          <?php
			date_default_timezone_set('America/Caracas');
			$fecha_inicio= date('Y-m-d');
			$hora =  date ('h:i a');
			print  $fecha_inicio;
			$_SESSION["fecha_inicio"]=$fecha_inicio;
			//echo'<br>';  print $hora;
	      ?>
        </label>
      </td>
    </tr>
    <tr bgcolor="#CCCCCC">
      <td width="239" height="19" bgcolor="#EFEFEF">Nombre del Funcionario: </td>
      <td bgcolor="#EFEFEF"><?php echo $nombre," ", $apellido?> </td>
    </tr>
    <tr bgcolor="#0099FF">
      <td height="11" bgcolor="#93D3FF">Direcci&oacute;n:</td>
      <td bgcolor="#93D3FF">
       <?php 
	      Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select * FROM t_direccion WHERE cod_direccion='$cod_dir'";
          $result=mysql_query($sSQL);
		  $row=mysql_fetch_array($result);
		  $dir=$row["direccion"];
		   echo $dir;
	    ?>
      </td>
    </tr>
    <tr bgcolor="#CCCCCC">
      <td bgcolor="#EFEFEF"><label>Tipo de Soporte:</label></td>
      <td bgcolor="#EFEFEF">
	    <?php 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="SELECT * FROM t_tipo_soporte WHERE cod_tipo_soporte<> 8";
          $result=mysql_query($sSQL);
          echo '<select name="tsoporte">';
          echo '<option value =0>Selecciona opci&oacute;n...';
          //Generamos el menu desplegable
          while ($row=mysql_fetch_array($result))
          {echo '<option value='.$row["cod_tipo_soporte"].'>'.$row["tipo_soporte"];} 
	    ?>
      </td>
    </tr>
    <tr bgcolor="#0099FF">
      <td bgcolor="#93D3FF"><label>Estatus:</label></td>
      <td bgcolor="#93D3FF">
        <?php 
	      // $link=Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos para colocar solo soporte abiertos
          $sSQL="Select * FROM t_status_solicitud WHERE cod_status_solicitud=1";
          $result=mysql_query($sSQL);
		  $row=mysql_fetch_array($result);
		  $status=$row["status_solicitud"];
		   echo $status;  //estatus soporte
		   Desconectarse();
		?>
      </td>
    </tr>
    <tr bgcolor="#CCCCCC">
      <td height="56" bgcolor="#EFEFEF">
          <label>Descripci&oacute;n:<br> </label>
      </td>
      <td height="56" bgcolor="#EFEFEF"><textarea name="descripcion" id="descripcion" cols="45" rows="3"></textarea></td>
    </tr>
    <tr>
       <td height="31" colspan="2" bgcolor="#93D3FF"><div align="center">
         <input type="submit" name="Submit" value="Solicitar" >
         <input name="seleccion" type="hidden" id="seleccion" value="3"></div>
       </td>
    </tr>
</table>
</form>
</div>
</div>
</body>
</html>