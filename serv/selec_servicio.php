<?php if ($_POST["type"] == "xml")	header ("content-type: text/xml; charset=ISO-8859-1"); ?>

<select id="destino" name="destino">
        <option value="-1">Selecciona valor</option>
<?php 
     include ('conexion.php');
	 $link=Conectarse(); 
if ($_POST["opcion"] == "1"){ 
	 //Creamos la sentencia SQL y la ejecutamos "Tecnico Servicio General"
     $sSQL="SELECT * FROM t_empleado WHERE cod_tipo_empleado= 2";
     $result=mysql_query($sSQL);
      //Generamos el menu desplegable
      while ($row=mysql_fetch_array($result))
      {echo '<option value="'.$row["codigo"].'">'.$row["pnombre"].' '.$row["papellido"].'</option>';}
}
else if($_POST["opcion"] == "2") { 
	 //Creamos la sentencia SQL y la ejecutamos "Buscar por direccion"
     $sSQL="SELECT * FROM t_direccion";
     $result=mysql_query($sSQL);
      //Generamos el menu desplegable
      while ($row=mysql_fetch_array($result))
      {echo '<option value="'.$row["cod_direccion"].'">'.$row["direccion"].'</option>';}
} 
else if($_POST["opcion"] == "3") { 
	 //Creamos la sentencia SQL y la ejecutamos "Buscamos por usuarios general"
    $sSQL="SELECT * FROM t_empleado WHERE cod_tipo_empleado= 1 OR cod_tipo_empleado= 3 ORDER BY pnombre";
     $result=mysql_query($sSQL);
     //Generamos el menu desplegable
      while ($row=mysql_fetch_array($result))
      {echo '<option value="'.$row["codigo"].'">'.$row["pnombre"].' '.$row["papellido"].'</option>';}
 }
else if($_POST["opcion"] == "4") { 
 	 //Creamos la sentencia SQL y la ejecutamos
    $sSQL="SELECT * FROM t_tipo_servicio";
     $result=mysql_query($sSQL);
     //Generamos el menu desplegable
      while ($row=mysql_fetch_array($result))
      {echo '<option value="'.$row["cod_tipo_servicio"].'">'.$row["tipo_servicio"].'</option>';}
 }
else if($_POST["opcion"] == "5") { 
 	 //Creamos la sentencia SQL y la ejecutamos
    $sSQL="SELECT * FROM t_status_solicitud";
     $result=mysql_query($sSQL);
      //Generamos el menu desplegable
      while ($row=mysql_fetch_array($result))
      {echo '<option value="'.$row["cod_status_solicitud"].'">'.$row["status_solicitud"].'</option>';}
 }
 ?>
</select>