<?php 
session_start();
//$cod_sop="";
include("conexion.php"); 
function selecciona_direccion()
{
	Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select * From t_direccion Order By direccion";
          $result=mysql_query($sSQL);
	desconectarse();
	// Voy imprimiendo el primer select compuesto por los direccions
	echo "<select name='direccion' id='direccion' onChange='cargaContenido(this.id)'>";
	echo "<option value='0'>Seleccione</option>";
	while($registro=mysql_fetch_row($result))
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

function selecciona_tservicio()
{
	 Conectarse(); 
	   //Creamos la sentencia SQL y la ejecutamos
       $sSQL="Select * From t_tipo_servicio";
       $result=mysql_query($sSQL);
	desconectarse();
          echo "<select name='tservicio' id='tservicio' onChange='cargaContenidos(this.id)'>";
		  echo '<option value =0>Selecciona el tipo de servicio...</option>';
          //Generamos el menu desplegable
          while ($row=mysql_fetch_row($result))
          
			    {echo '<option value='.$row[0].'>'.$row[1].'</option>';}
		  echo "</select>";
}
?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Servicio</title>
<link rel="stylesheet" type="text/css" href="select_dependientes.css">
<style type="text/css">
body {
	
}
#servicio {
	position: absolute;
	width: 610;
	height: 420px;
	z-index: 1;
	left: 179px;
	top: 49px;
	background-image: url(imagen/servicio_tec.gif);
}
#contenedor_serv {
	position: absolute;
	width: 100%;
	height: 500px;
	z-index: 2;
	background-color: #9DE3C9;
	left: 0;
	top: 0;
}
</style> 
<!--para darle forma al como select -->
<script type="text/javascript" src="select_dependientes.js"></script>  <!--activar el combo select del funcionario cuando es seleccioando el select direccion-->
<script type="text/javascript"> 
function valida_envia_serv(){
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
	//valido status de soporte
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
	//valido descripcion
    if (document.form_llenar.solucion.value.length==0){
       alert("Colocar una breve descripción sobre la solicitud")
       document.form_llenar.solucion.focus()
       return false;
    }
} 
</script> 
</head>
<body>
<div id="contenedor_serv">
<?php 
  $usuario2=$_SESSION['usu'];  
  $link=Conectarse(); 
  $result=mysql_query("select * from t_empleado where usuario='$usuario2'",$link); 
  $row = mysql_fetch_array($result);
  //Datos Usado para el funcionario de servicio General
  $cod_tec_serv=$row["codigo"];
  $nombre=$row["pnombre"];
  $apellido = $row["papellido"];
  $correo_tec_serv= $row["correo"];
  $_SESSION["cod_tec_serv"]=$cod_tec_serv;
  $_SESSION["correo_tec_serv"]=$correo_tec_serv;
   mysql_free_result($result); 
   desconectarse();
?>

<form onSubmit="return valida_envia_serv()" name="form_llena" action="case_servicio.php" method="POST" >
<div id="servicio">
<br>
<table width="553" border="0" align="center">
    <tr bgcolor="#EFEFEF">
      <td height="46" colspan="5" bgcolor="#E1E1E1"><label>
        <div align="center">
          <strong><em>Servicio General</em></strong>
        </div>
      </label></td>
    </tr>
    <tr>
      <td width="159" bgcolor="#1CFBE4">
        <p>
          <label>Nombre Del T&eacute;cnico: </label>
        </p>      </td>
      <td width="119" bgcolor="#1CFBE4"><?php echo $nombre ," ", $apellido?> </td>
      <td width="87" bgcolor="#1CFBE4">
      <label>Nro Soporte: </label>      </td>
      <td width="42" bgcolor="#1CFBE4"></td>
      <td width="124" bgcolor="#1CFBE4">
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
      <td bgcolor="#1CFBE4">Nombre del Funcionario: </td>
      <td colspan="4" bgcolor="#1CFBE4">
	      <select disabled="disabled" name="usuario" id="usuario">
		  <option value ="-">Selecciona opci&oacute;n...
		  </select>
      </td>
    </tr>
        <tr>
      <td bgcolor="#E1E1E1"><label>Tipo de Servicio:</label></td>
      <td colspan="4" bgcolor="#E1E1E1">
	  	<?php selecciona_tservicio(); ?>
      </td>
    </tr>
        <tr>
          <td bgcolor="#1CFBE4">Detalle:</td>
          <td colspan="4" bgcolor="#1CFBE4">
          	<select disabled="disabled" name="detalle" id="detalle">
		    <option value ="-">Selecciona opci&oacute;n...
		    </select>
          </td>
        </tr>
        <tr>
          <td bgcolor="#E1E1E1">Tipo de Solicitud:</td>
          <td colspan="4" bgcolor="#E1E1E1">
          	<select disabled="disabled" name="tsolicitud" id="tsolicitud">
		    <option value ="-">Selecciona opci&oacute;n...
		    </select>
          </td>
        </tr>
        <tr>
      <td bgcolor="#1CFBE4"><label>Estatus:</label></td>
      <td colspan="4" bgcolor="#1CFBE4">
	  <?php 
	      Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select cod_status_solicitud, status_solicitud From t_status_solicitud Order By status_solicitud";
          $result=mysql_query($sSQL);
		  desconectarse();
          echo '<select name="status_solicitud">';
		  echo '<option value =0>Selecciona el estatus...';
          //Generamos el menu desplegable
          while ($row=mysql_fetch_array($result))
            {
			  if  ($row["cod_status_solicitud"] <>1)
			  {echo '<option value='.$row["cod_status_solicitud"].'>'.$row["status_solicitud"];}
			}
      
	  ?> </td>
    </tr>
    <tr>
      <td height="24" bgcolor="#E1E1E1">
         <label>Descripci&oacute;n de la Falla: </label>
      </td>
      <td height="24" colspan="4" bgcolor="#E1E1E1"><input name="descripcion" type="text" id="descripcion" value="" size="58"></td>
    </tr>
    <tr>
      <td height="101" colspan="5" bgcolor="#1CFBE4"><div align="center"> <label>Soluci&oacute;n de la Falla: </label> <br> <textarea name="solucion" cols="65" rows="4" id="solucion"></textarea></div>
      </td>
    </tr>
    <tr>
       <td height="31" colspan="5"><div align="center">
         <input type="submit" name="Submit" value="Enviar">
         <input name="seleccion" type="hidden" id="seleccion" value="1">
       </div>       </td>
    </tr>
  </table>
  </div>
</form>
</div>
</body>
</html>