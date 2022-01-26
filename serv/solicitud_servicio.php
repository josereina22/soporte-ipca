<?php session_start();?>
<html>
<head>
<title>Servicio</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style_serv.css" type="text/css" media="screen" />
<script src="ajax.js"></script>
<script type="text/javascript" src="selects_jquery/jquery.js"></script>
<script type="text/javascript">
<!--
function mostrartiposervicio()
{
	//Si la opcion con id Conocido_1 (dentro del documento > formulario con name fcontacto > 
    //y a la vez dentro del array de Conocido) esta activada
	if (document.fservicio.tservicio[0].checked == true) 
	{
		//muestra (cambiando la propiedad display del estilo) el div con id 'desdeotro'
		document.getElementById('vehiculo').style.display='block';
		document.getElementById('det_vehiculo').style.display='block';
		document.getElementById('sede').style.display='none';
		
		//por el contrario, si no esta seleccionada
	} 
	else
	{
		//oculta el div con id 'desdeotro'
		document.getElementById('vehiculo').style.display='none';
		document.getElementById('det_vehiculo').style.display='none';
		document.getElementById('sede').style.display='block';
		//document.getElementById('sede').style.display='none';
	}
}
-->
</script>
<script type="text/javascript"> 
function valida_envia(){
    //valido el tipo de servicio
    if (document.fservicio.tservicio[0].checked == true) 
	{
		if (document.fservicio.vehiculo.selectedIndex==0){
	       alert("Debe seleccionar la placa.")
    	   document.fservicio.vehiculo.focus()
	       return false;
    	}    
		//valido 
	    if (document.fservicio.tsolicitudv.selectedIndex==0){
       		alert("Debe seleccionar un tipo de Solicitud.")
      		document.fservicio.tsolicitudv.focus()
      		return false;
    	} 
		if (document.fservicio.descripcionv.value.length==0){
    	   	alert("Coloca una breve descripción de la solicitud.")
       		document.fservicio.descripcionv.focus()
		    return false;
    	} 
	}
    else if (document.fservicio.tservicio[1].checked == true) 
	{
		if (document.fservicio.tsede.selectedIndex==0){
	       alert("Debe seleccionar un tipo de Sede.")
    	   document.fservicio.tsede.focus()
	       return false;
    	}    
		//valido 
	    if (document.fservicio.tsolicituds.selectedIndex==0){
       		alert("Debe seleccionar un tipo de Solicitud.")
      		document.fservicio.tsolicituds.focus()
      		return false;
    	} 
		if (document.fservicio.descripcions.value.length==0){
    	   	alert("Coloca una breve descripción de la falla.")
       		document.fservicio.descripcions.focus()
		    return false;
    	} 
	}
	//el formulario se envia
    alert("Gracias por su solicitud, acepte y espere a que se le notifique a informática");
    document.form_llenar.submit();
	return true;
} 
</script> 
</head>
<body>
<div id="contenedor_serv">
<form onSubmit="return valida_envia()" action="case_servicio.php" method="post" name="fservicio">
  	<div id="selec_serv">
       <input type="radio" name="tservicio" value="1" id="1" onClick="mostrartiposervicio()">Veh&iacute;culo<br><br>
       <input name="tservicio" type="radio" id="2" onClick="mostrartiposervicio()" value="2" checked="CHECKED">Sede
    </div>
     <div id="vehiculo" style="display:none;">
   	   <div id="titulo_vehiculo">
   	     <div align="center">
   	       Reportar Veh&iacute;culo
   	     </div>
   	   </div>
       <p>&nbsp;</p>
       <table width="570" align="center" border="0">
         <tr>
          <td width="197" height="23" bgcolor="#1CFBE4"><p>Fecha de Solicitud: </p></td>
          <td width="320" bgcolor="#1CFBE4">
		   <?php
			date_default_timezone_set('America/Caracas');
			$fecha_inicio= date('Y-m-d');
			$hora =  date ('h:i a');
			print  $fecha_inicio;
			$_SESSION["fecha_inicio"]=$fecha_inicio;
			//echo'<br>';  print $hora;
	       ?>
          </td>
        </tr>
        <tr>
         <td bgcolor="#E1E1E1">Nombre del Solicitante</td>
         <td bgcolor="#E1E1E1">
		 <?php
	  		include("conexion.php");
			$usuario2=$_SESSION['usu'];  
			$link=Conectarse(); 
			$result=mysql_query("select * from t_empleado where usuario='$usuario2'",$link); 
			$row = mysql_fetch_array($result);
			$cod_usu=$row["codigo"];
			$_SESSION["cod_usu"]=$cod_usu; //codidgo de usuario para insertar en la tabla servicio
			$nombre=$row["pnombre"];
			$apellido = $row["papellido"];
			$cod_dir=$row["cod_direccion"]; //codigo para hacer el select y saber la direccion
			mysql_free_result($result); 
			mysql_close($link);
			echo $nombre," ", $apellido
	 	  ?>
     	</td>
      </tr>
      <tr>
        <td bgcolor="#1CFBE4">Direcci&oacute;n</td>
        <td bgcolor="#1CFBE4">
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
      <tr>
        <td bgcolor="#E1E1E1">Placa del Veh&iacute;culo</td>
        <td bgcolor="#E1E1E1">
		<?php
          $link=Conectarse();
		  //Creamos la sentencia SQL y la ejecutamos
          $result=mysql_query("Select * From t_vehiculo Order By placa",$link);
		?>
        <select name="vehiculo" id="cont" onChange="load(this.value)">
          <option value="">Seleccione</option>
           <?php
		   while($fila=mysql_fetch_array($result)){
		   ?>
           <option value="<?php echo $fila[cod_vehiculo]; ?>"><?php echo $fila[placa]; ?></option>
		   <?php } ?> 
        </select>
     	</td>
      </tr>
      <tr>
        <td bgcolor="#1CFBE4">Tipo de Solicitud</td>
        <td bgcolor="#1CFBE4">
		  <?php 
	        $link=Conectarse();
		    //Creamos la sentencia SQL y la ejecutamos
            $result=mysql_query("Select * From t_solic_serv_vehiculo",$link);
            echo '<select name="tsolicitudv">';
            echo '<option value =0>Selecciona opci&oacute;n...';
            //Generamos el menu desplegable
            while ($row=mysql_fetch_array($result))
             {echo '<option value='.$row["cod_solic_serv_vehiculo"].'>'.$row["solic_serv_vehiculo"];} 
	      ?>
        </td>
      </tr>
      <tr>
        <td height="18" bgcolor="#E1E1E1">Descripci&oacute;n</td>
        <td bgcolor="#E1E1E1"><textarea name="descripcionv" id="descripcionv" cols="45" rows="2"></textarea></td>
      </tr>
      <tr>
        <td height="28" colspan="2" bgcolor="#1CFBE4"><div align="center">
            <div align="center">
              <input type="submit" name="button" id="button" value="Solicitar">
              <input name="seleccion" type="hidden" id="seleccion" value="3">
            </div></div>
        </td>
      </tr>
    </table>
    </div>
    
 <div id="sede">
    <div id="titulo_sede">Reporde de Servicio General</div>
  <p>&nbsp;</p>
    <table width="576" height="200" border="0" align="center">
      <tr>
        <td width="224" height="23" bgcolor="#1CFBE4"><p>Fecha de Solicitud: </p></td>
        <td width="342" bgcolor="#1CFBE4">
		<?php
			date_default_timezone_set('America/Caracas');
			$fecha_inicio= date('Y-m-d');
			$hora =  date ('h:i a');
			print  $fecha_inicio;
			$_SESSION["fecha_inicio"]=$fecha_inicio;
			//echo'<br>';  print $hora;
	    ?>
        </td>
      </tr>
      <tr>
        <td bgcolor="#E1E1E1">Nombre del Solicitante</td>
        <td bgcolor="#E1E1E1">
		<?php echo $nombre," ", $apellido?>
     	</td>
      </tr>
      <tr>
        <td bgcolor="#1CFBE4">Direcci&oacute;n</td>
        <td bgcolor="#1CFBE4"><?php echo $dir;?></td>
      </tr>
      <tr>
        <td bgcolor="#E1E1E1">Tipo de Sede</td>
        <td bgcolor="#E1E1E1"><?php 
	      $link=Conectarse();
		  //Creamos la sentencia SQL y la ejecutamos
          $result=mysql_query("Select * From t_sede",$link);
          echo '<select name="tsede">';
          echo '<option value =0>Selecciona opci&oacute;n...';
          //Generamos el menu desplegable
          while ($row=mysql_fetch_array($result))
          {echo '<option value='.$row["cod_sede"].'>'.$row["sede"];} 
	    ?></td>
      </tr>
      <tr>
        <td bgcolor="#1CFBE4">Tipo de Solicitud</td>
        <td bgcolor="#1CFBE4"><?php 
	      $link=Conectarse();
		  //Creamos la sentencia SQL y la ejecutamos
          $result=mysql_query("Select * From t_solic_serv_sede",$link);
          echo '<select name="tsolicituds">';
          echo '<option value =0>Selecciona opci&oacute;n...';
          //Generamos el menu desplegable
          while ($row=mysql_fetch_array($result))
          {echo '<option value='.$row["cod_solic_serv_sede"].'>'.$row["solic_serv_sede"];} 
	    ?></td>
      </tr>
      <tr>
        <td height="18" bgcolor="#E1E1E1">Descripci&oacute;n</td>
        <td bgcolor="#E1E1E1"><textarea name="descripcions" id="descripcions" cols="45" rows="2"></textarea></td>
      </tr>
      <tr>
        <td height="28" colspan="2" bgcolor="#1CFBE4"><div align="center">
            <div align="center">
              <input type="submit" name="button" id="button" value="Solicitar">
              <input name="seleccion" type="hidden" id="seleccion" value="3">
          </div></div></td>
      </tr>
    </table>
    </div>

<div id="det_vehiculo"></div>
</form>
<div id="seleccione_op">
  <div align="center">Seleccione Una Opci&oacute;n</div>
</div>
  
</div>
</body>
</html>
