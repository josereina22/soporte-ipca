<?php 
session_start();
$cod_sop="";
include("../conexion.php"); 
function selecciona_direccion()
{
	$link=Conectarse();
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select * From t_direccion Order By direccion";
          $result=$link->query($sSQL);
	desconectarse($link);
	// Voy imprimiendo el primer select compuesto por los direccions
	echo "<select name='direccion' id='direccion' onChange='cargaContenido(this.id)'>";
	echo "<option value='0'>Seleccione</option>";
	while($registro=$result->fetch_array())
	{
		echo "<option value='".$registro[0]."'>".$registro[1]."</option>";
	}
	echo "</select>";
}  
//Pregunto si la direccion viene mediente del, método POS, es decir, si seleccionamos una Dirección
if (isset($_POST['direccion']))
{ 
  $_SESSION['direccion']=$_POST['direccion'];
}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Soporte</title>
<link rel="stylesheet" type="text/css" href="select_dependientes.css">
<style type="text/css">
#contenedor_sopor {
	position: absolute;
	width: 100%;
	height: 500px;
	z-index: 1;
	left: 0;
	top: 0;
	background-color: #93b6e2;
}
#soporte {
	position: absolute;
	width: 600px;
	height: 380px;
	z-index: 2;
	top: 50%;
	left: 50%;
	background-image: url(imagen/soporte2.gif);
	margin-left: -300px;
	margin-top: -190px;
}
</style> 
<!--para darle forma al como select -->
<script type="text/javascript" src="select_dependientes.js"></script>  <!--activar el combo select del funcionario cuando es seleccioando el select direccion-->
<script type="text/javascript"> 
function valida_envia_soport(){
    //valido la direccion
    if (document.form_llena.direccion.selectedIndex==0){
       alert("Debe seleccionar la Dirección del Funcionario.");
       document.form_llena.direccion.focus();
       return false;
    }    
	//valido funcionario
    if (document.form_llena.usuario.selectedIndex==0){
       alert("Seleccione el Funcionario");
       document.form_llena.usuario.focus();
       return false;
    }
	//valido tipo de soporte
    if (document.form_llena.tsoporte.selectedIndex==0){
       alert("Debe seleccionar un tipo de Soporte.");
       document.form_llenar.tsoporte.focus();
       return false;
    }
	//valido tipo de soporte
	if (document.form_llena.status_solicitud.selectedIndex==0){
       alert("Seleccionar el Estatus del Soporte")
       document.form_llenar.status_solicitud.focus()
       return false;
    }
		//valido descripcion
    if (document.form_llenar.descripcion.value.length==0){
       alert("Colocar una breve descripción sobre la solicitud")
       document.form_llenar.descripcion.focus()
       return false;
    }
    if (document.form_llenar.solucion.value.length==0){
       alert("Colocar una breve descripción sobre la solicitud")
       document.form_llenar.solucion.focus()
       return false;
    }
    //el formulario se envia
    //alert("Gracias por su solicitud, acepte y espere a que se le notifique a informática");
    //document.form_llena.submit();
	//return true;
} 
</script> 

</head>
<body>
<div id="contenedor_sopor">
<?php 
  $usuario2=$_SESSION['usu'];  
	  $link=Conectarse(); 
	  $result=$link->query("select * from t_empleado where usuario='$usuario2'"); 
	  $row = $result->fetch_array();
	  //Datos Usado para el Técnico
	  $cod_tec=$row["codigo"];
	  $_SESSION["cod_tec"]=$cod_tec;
	  $nombre=$row["pnombre"];
	  $_SESSION["nombre_tec"]=$nombre;
	  $apellido = $row["papellido"];
	  $_SESSION["apellido_tec"]=$apellido;
	  $correo_tec = $row["correo"];
	  $_SESSION["correo_tec"]=$correo_tec;
	   mysqli_free_result($result); 
	   desconectarse($link);
	?>

<div id="soporte">
<form onSubmit="return valida_envia_soport()" name="form_llena" action="case_soporte.php" method="POST" >
  <table width="532" border="0" align="center">
    <tr>
      <td height="46" colspan="5"><label>
        <div align="center">
          <strong><em>Soporte T&eacute;cnico</em></strong>
        </div>
      </label></td>
    </tr>
    <tr>
      <td width="168" bgcolor="#93D3FF">
        <p>
          <label>Nombre Del T&eacute;cnico: </label>
        </p>      </td>
      <td width="110" bgcolor="#93D3FF"><?php echo $nombre ," ", $apellido?> </td>
      <td width="87" bgcolor="#93D3FF">
      <label>Nro Soporte: </label>      </td>
      <td width="42" bgcolor="#93D3FF"></td>
      <td width="124" bgcolor="#93D3FF">
	  <label>Fecha:
	  <?php
		date_default_timezone_set('America/Caracas');
		$fecha_inicio= date('Y-m-d');
		$hora =  date ('h:i a');
		print  $fecha_inicio;
		$_SESSION["fecha_inicio"]=$fecha_inicio;
		//echo'<br>';  
		//print $hora;
	  ?>
	  <br>
	  </label></td>
    </tr>
    <tr>
      <td height="24" bgcolor="#E1E1E1"><label> Direcci&oacute;n:</label></td>
      <td colspan="4" bgcolor="#E1E1E1">
        <?php selecciona_direccion(); ?></td>
    </tr>
    <tr>
      <td bgcolor="#93D3FF">Nombre del Funcionario: </td>
      <td colspan="4" bgcolor="#93D3FF">
	      <select disabled="disabled" name="usuario" id="usuario">
		  <option value ="-">Selecciona opci&oacute;n...
		  </select>      </td>
    </tr>
        <tr>
      <td bgcolor="#E1E1E1"><label>Tipo de Soporte:</label></td>
      <td colspan="4" bgcolor="#E1E1E1">
	  <?php 
	      $link=Conectarse();
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="SELECT * FROM t_tipo_soporte WHERE cod_tipo_soporte <>8 ORDER BY tipo_soporte";
          $result=$link->query($sSQL);
		  desconectarse($link);
          echo '<select name="tsoporte">';
		  echo '<option value =0>Selecciona el Tipo de Soporte...';
          //Generamos el menu desplegable
          while ($row=$result->fetch_array())
          {echo '<option value='.$row["cod_tipo_soporte"].'>'.$row["tipo_soporte"];}  
	  ?>
      </td>
    </tr>
        <tr>
      <td bgcolor="#93D3FF"><label>Estatus:</label></td>
      <td colspan="4" bgcolor="#93D3FF">
	  <?php 
	      $link=Conectarse();
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select cod_status_solicitud, status_solicitud From t_status_solicitud Order By status_solicitud";
          $result=$link->query($sSQL);
		  desconectarse($link);
          echo '<select name="status_solicitud">';
		  echo '<option value =0>Selecciona el estatus...';
          //Generamos el menu desplegable
          while ($row=$result->fetch_array())
          {echo '<option value='.$row["cod_status_solicitud"].'>'.$row["status_solicitud"];}
      
	  ?> </td>
    </tr>
    <tr>
      <td height="24" bgcolor="#E1E1E1">
         <label>Descripci&oacute;n de la Falla: </label>
      </td>
      <td height="24" colspan="4" bgcolor="#E1E1E1"><input name="descripcion" type="text" id="descripcion" value="" size="58"></td>
    </tr>
    <tr>
      <td height="119" colspan="5" bgcolor="#93D3FF"><div align="center"> <label>Soluci&oacute;n de la Falla: </label> <br> <textarea name="solucion" cols="65" rows="5" id="solucion"></textarea></div>
      </td>
    </tr>
    <tr>
       <td height="31" colspan="5"><div align="center">
         <input type="submit" name="Submit" value="Registrar">
         <input name="seleccion" type="hidden" id="seleccion" value="1">
       </div>       </td>
    </tr>
  </table>
</form>
</div>
</div>
</body>
</html>