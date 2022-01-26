<?php session_start();?>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<?php
include 'conexion.php';

$q=$_POST['q'];
$con=conectarse();

	$sSQL="Select * FROM t_vehiculo WHERE cod_vehiculo='$q'";
	$result=mysql_query($sSQL);
	$row=mysql_fetch_array($result);
	$cod_vehiculo=$row["cod_vehiculo"];
	$cod_tipo_vehiculo=$row["cod_tipo_vehiculo"];
	$cod_modelo_vehiculo=$row["cod_modelo_vehiculo"];
	$cod_empleado=$row["cod_empleado"];
	$placa=$row["placa"];
	$nrobien=$row["nro_bien"];
echo  "<table width='545' border='1'>";
echo  "    <tr>";
echo  "      <td colspan='6'><div align='center'>Detalles del Veh&iacute;culo</div></td>";
echo  "    </tr>";
echo  "    <tr>";
echo  "      <td width='134'>C&oacute;digo del Veh&iacute;culo</td>";
echo  "      <td width='63'> $cod_vehiculo </td>";
echo  "      <td width='104'>Tipo</td>";
echo  "      <td width='60'>"; 
	  		
				$sSQL="Select * FROM t_tipo_vehiculo WHERE cod_tipo_vehiculo='$cod_tipo_vehiculo'";
				$result=mysql_query($sSQL);
				$row=mysql_fetch_array($result);
				$tipo_vehiculo=$row["tipo_vehiculo"];
     		    echo $tipo_vehiculo ;

echo  "      </td>"; 
echo  "      <td width='64'>Modelo</td>"; 
echo  "      <td width='80'>"; 
 		        $sSQL="Select * FROM t_modelo_vehiculo WHERE cod_modelo_vehiculo='$cod_modelo_vehiculo'";
				$result=mysql_query($sSQL);
				$row=mysql_fetch_array($result);
				$modelo_vehiculo=$row["modelo_vehiculo"];
				  echo $modelo_vehiculo;

echo  "      </td>"; 
echo  "    </tr>"; 
echo  "    <tr>"; 
echo  "      <td>Responsable</td>"; 
echo  "      <td colspan='2'>"; 
				$sSQL="Select * FROM t_empleado WHERE codigo='$cod_empleado'";
				$result=mysql_query($sSQL);
				$row=mysql_fetch_array($result);
				$nombre_resp=$row["pnombre"];
				$apellido_resp=$row["papellido"];
				$cod_dir_resp=$row["cod_direccion"];
			  echo $nombre_resp," ", $apellido_resp;

echo  "      </td>"; 
echo  "      <td>Placa</td>"; 
echo  "      <td colspan='2'>$placa</td>"; 
echo  "    </tr>"; 
echo  "    <tr>"; 
echo  "      <td>Direcci&oacute;n</td>"; 
echo  "      <td colspan='3'>  "; 
				Conectarse(); 
	          //Creamos la sentencia SQL y la ejecutamos
				$sSQL="Select * FROM t_direccion WHERE cod_direccion='$cod_dir_resp'";
				$result=mysql_query($sSQL);
				$row=mysql_fetch_array($result);
				$dir_resp=$row["direccion"];
		          echo $dir_resp;
echo  "      </td>";
echo  "      <td>Nro. Bien</td>";
echo  "      <td>";
      			  echo $nrobien ;
echo  "      </td>";
echo  "    </tr>";
echo  "  </table>";
//}
?>
</body>
</html>