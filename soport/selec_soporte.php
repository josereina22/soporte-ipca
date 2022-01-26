<?php if ($_POST["type"] == "xml")	header ("content-type: text/xml; charset=ISO-8859-1"); ?>

<select id="destino" name="destino">
        <option value="-1">Selecciona valor</option>
<?php 
     include ('../conexion.php');
	 $link=Conectarse(); 
if ($_POST["opcion"] == "2"){ 
	 //Creamos la sentencia SQL y la ejecutamos
     $sSQL="SELECT * FROM t_empleado WHERE cod_tipo_empleado= 1";
     $result=$link->query($sSQL);
      //Generamos el menu desplegable
      while ($row=$result->fetch_array())
      {echo '<option value="'.$row["codigo"].'">'.$row["pnombre"].' '.$row["papellido"].'</option>';}
}
else if($_POST["opcion"] == "3") { 
	 //Creamos la sentencia SQL y la ejecutamos
     $sSQL="SELECT * FROM t_direccion";
     $result=$link->query($sSQL);
      //Generamos el menu desplegable
      while ($row=$result->fetch_array())
      {echo '<option value="'.$row["cod_direccion"].'">'.$row["direccion"].'</option>';}
} 
else if($_POST["opcion"] == "4") { 
	 //Creamos la sentencia SQL y la ejecutamos
    $sSQL="SELECT * FROM t_empleado WHERE cod_tipo_empleado= 2 ORDER BY pnombre";
     $result=$link->query($sSQL);
     //Generamos el menu desplegable
      while ($row=$result->fetch_array())
      {echo '<option value="'.$row["codigo"].'">'.$row["pnombre"].' '.$row["papellido"].'</option>';}
 }
else if($_POST["opcion"] == "5") { 
 	 //Creamos la sentencia SQL y la ejecutamos
    $sSQL="SELECT * FROM t_tipo_soporte";
     $result=$link->query($sSQL);
     //Generamos el menu desplegable
      while ($row=$result->fetch_array())
      {echo '<option value="'.$row["cod_tipo_soporte"].'">'.$row["tipo_soporte"].'</option>';}
 }
else if($_POST["opcion"] == "6") { 
 	 //Creamos la sentencia SQL y la ejecutamos
    $sSQL="SELECT * FROM t_status_soporte";
     $result=$link->query($sSQL);
      //Generamos el menu desplegable
      while ($row=$result)
      {echo '<option value="'.$row["cod_status"].'">'.$row["status_soporte"].'</option>';}
 }
 ?>
</select>