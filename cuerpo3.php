<?php session_start();?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cuerpo</title>
<style type="text/css">
#soportes_atendidos{
	position: absolute;
	width: 105px;
	height: 82px;
	z-index: 1;
	left: 129px;
	top: 71px;
}
#soporte_por_atender {
	position: absolute;
	width: 105px;
	height: 85px;
	z-index: 2;
	left: 137px;
	top: 329px;
}

#servicios_atendidos {
	position: absolute;
	width: 117px;
	height: 82px;
	z-index: 3;
	left: 669px;
	top: 64px;
}
#servicios_por_atender{
	position: absolute;
	width: 117px;
	height: 80px;
	z-index: 4;
	left: 665px;
	top: 345px;
}
#nombre_tecnico {
	position: absolute;
	width: 200px;
	height: 23px;
	z-index: 5;
	left: 352px;
	top: 403px;
}

#contenedor {
	position: absolute;
	width: 100%;
	height: 500px;
	z-index: 6;
	background-color: #D6D6D6;
	left: 0;
	top: 0;
	background-image: url(imagenes/cuerpousuario.jpg);
}
#imagen_serv_sopor {
	position: absolute;
	width: 400px;
	height: 350px;
	z-index: 7;
	left: 258px;
	top: 72px;
}
</style>
</head>
<body>
<div id="imagen_serv_sopor"><img src="imagenes/servi_soport.gif" width="400" height="350"></div>
<div id="contenedor">
  <div id="soportes_atendidos">
  <table width="105" height="70" border="0">
    <tr>
      <th width="117" height="30" scope="col"> Soportes Atendidos</th>
    </tr>
    <tr>
      <td height="30">
        <div align="center">
        <?php      
		include("conexion.php");
	    $usuario2=$_SESSION['usu'];  
	    $link=Conectarse(); 
		$result=mysql_query("select * from t_empleado where usuario='$usuario2'"); 
	    $row = mysql_fetch_array($result);
	    $codigo=$row["codigo"];
		$_SESSION['codigo']=$codigo;
		
	    $consulta="SELECT COUNT(*) FROM t_soporte WHERE cod_status_solicitud=2 AND cod_usu= '$codigo'"; 
		$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
		$campo = mysql_fetch_array($resultados);
		$count=$campo[0];
   	 	echo $count;
	 ?>
      </div></td>
    </tr>
  </table>
</div>
<div id="servicios_atendidos">
  <table width="114" height="70" border="0">
    <tr>
      <th width="106" height="30" scope="col">Servicios Generales Atendidos</th>
    </tr>
    <tr>
      <td height="30">
       <div align="center">
	    <?php
	    $consulta="SELECT COUNT(*) FROM t_servicio WHERE cod_status_solicitud=2 AND cod_usu= '$codigo'"; 
		$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
		$campo = mysql_fetch_array($resultados);
		$count=$campo[0];
   	 	echo $count;
	    ?>
       </div>
      </td>
    </tr>
  </table>
</div>

<div id="soporte_por_atender">
  <table width="116" height="70" border="0">
    <tr>
      <th width="106" height="30" scope="col">Soportes  por Atender</th>
    </tr>
    <tr>
      <td height="30">
       <div align="center">
	    <?php
	    $consulta="SELECT COUNT(*) FROM t_soporte WHERE (cod_status_solicitud=1 OR cod_status_solicitud=3) AND cod_usu= '$codigo'"; 
		$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
		$campo = mysql_fetch_array($resultados);
		$count=$campo[0];
   	 	echo $count;
	    ?>
       </div>
      </td>
    </tr>
  </table>
</div>
<div id="servicios_por_atender">
  <table width="116" height="70" border="0">
    <tr>
      <th width="106" height="30" scope="col">Servicios Generales por Atender</th>
    </tr>
    <tr>
      <td height="30">
       <div align="center">
	    <?php
	    $consulta="SELECT COUNT(*) FROM t_servicio WHERE (cod_status_solicitud=1 OR cod_status_solicitud=3) AND cod_usu= '$codigo'"; 
		$resultados= mysql_query ($consulta) or die("error consulta: ".mysql_error());
		$campo = mysql_fetch_array($resultados);
		$count=$campo[0];
   	 	echo $count;
	    ?>
       </div>
      </td>
    </tr>
  </table>
</div>
</div>

</body>
</html>