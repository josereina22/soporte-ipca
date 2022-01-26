<?php
session_start();
include("conexion.php");
conectarse ();
$cod_vehiculo= $_POST['cod_vehiculo'];
$tipo_vehiculo= $_POST['tipo_vehiculo'];
$modelo_vehiculo= $_POST['modelo_vehiculo'];
$cod_empleado= $_POST['cod_empleado'];
$placa= $_POST['placa'];
$ano= $_POST['ano'];
$bien= $_POST['bien'];
$cod_direccion= $_POST['direccion'];
//$apellidos = $_POST['apellidos'];
mysql_query("INSERT INTO t_vehiculo Values('$cod_vehiculo','$tipo_vehiculo','$modelo_vehiculo','$cod_empleado', '$placa', '$ano', '$bien')") or die("error en Incluir: ".mysql_error());
header("location: agregar_vehiculo.php?mensaje=1");
?>
</body>
</html>