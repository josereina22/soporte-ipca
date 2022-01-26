<? session_start()?>
<html>
<head>
<title>Actualizar Usuario</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
body {
	background-image: url();
}
#usuario {
	position: absolute;
	width: 600px;
	height: 285px;
	z-index: 1;
	left: 50%;
	top: 50%;
	margin-left: -300px;
	margin-top: -142px;
}
#contenedor_act_usu {
	position: absolute;
	width: 100%;
	height: 400px;
	z-index: 1;
}
</style>
</head>
<body>
<div id="contenedor_act_usu">
  <div id="usuario">
    <?PHP
include ("conexion.php");
/*if (!isset($_SESSION["usu"]))
{ 
	 ?>
	    <script type="text/javascript">
			window.location="index.php";
	    </script>
	 <?php
}
else
{ */
  $usuario2=$_SESSION['usu'];  
  $link=conectarse();
  $consulta="SELECT * FROM t_empleado WHERE usuario='$usuario2' ";
  $resultado_usu= $link->query($consulta) or die("error consulta");
  $campo = $resultado_usu->fetch_array();
  $codigo_usu=$campo["codigo"];
  $_SESSION["cod_usu"]=$codigo_usu;   
  $nombre_usu=$campo["pnombre"];
  $nombre_usu2=$campo["snombre"];
  $apellido_usu=$campo["papellido"];
  $apellido_usu2=$campo["sapellido"];  
  $cedula= $campo["cedula"];  
  $sexo =$campo["cod_sexo"];  
  $correo_usu= $campo["correo"];
  $tlf= $campo["ext"];  
  $cod_direccion= $campo["cod_direccion"];
  $cod_cargo= $campo["cod_cargo"];  
  $cod_tipo_empleado=$campo["cod_tipo_empleado"];  
  $usuario= $campo["usuario"];  
  $contrasena= $campo["contrasena"];  
?>
    <form name="form1" method="post" action="case.php">
      <table width="572" border="0" align="center">
        <tr>
          <td colspan="4" bgcolor="#CCCCCC"><div align="center" class="titulo">Actualizar Usuario</div></td>
        </tr>
        <tr>
          <td colspan="4" bgcolor="#0099FF"> C&oacute;digo de Usuario:
            <label> <?php echo $codigo_usu?> </label></td>
        </tr>
        <tr>
          <td width="132" bgcolor="#CCCCCC">Primer Nombre:</td>
          <td width="132" bgcolor="#CCCCCC"><input name="pnombre" type="text" id="pnombre" value="<?php echo $nombre_usu?>" readonly></td>
          <td width="144" bgcolor="#CCCCCC">Segundo Nombre:</td>
          <td width="144" bgcolor="#CCCCCC"><input name="snombre" type="text" id="snombre" value="<?php echo $nombre_usu2?>"></td>
        </tr>
        <tr>
          <td bgcolor="#0099FF">Primer Apellido:</td>
          <td bgcolor="#0099FF"><input name="papellido" type="text" id="papellido" value="<?php echo $apellido_usu?>" readonly></td>
          <td bgcolor="#0099FF">Segundo Apellido: </td>
          <td bgcolor="#0099FF"><input name="sapellido" type="text" id="sapellido" value="<?php echo $apellido_usu2?>"></td>
        </tr>
        <tr>
          <td bgcolor="#CCCCCC">C&eacute;dula: </td>
          <td bgcolor="#CCCCCC"><input name="ced" type="text" id="ced" value="<?php echo $cedula?>" readonly></td>
          <td bgcolor="#CCCCCC">Sexo: </td>
          <td bgcolor="#CCCCCC"><?php   
		  $sSQL="Select * From t_sexo WHERE cod_sexo= '$sexo'";
          $result=$link->query($sSQL);
          $row=$result->fetch_array();
          $nom_sexo= $row["sexo"];
          echo $nom_sexo?></td>
        </tr>
        <tr>
          <td bgcolor="#0099FF">Correo:</td>
          <td bgcolor="#0099FF"><input name="correo" type="text" id="correo" value="<?php echo $correo_usu?>" readonly></td>
          <td bgcolor="#0099FF">Tel&eacute;fono(ext): </td>
          <td bgcolor="#0099FF"><input name="tlf" type="text" id="tlf" value="<?php echo $tlf?>"></td>
        </tr>
        <tr>
          <td bgcolor="#CCCCCC">Direcci&oacute;n: </td>
          <td colspan="3" bgcolor="#CCCCCC"><?php 
	       /*$link=Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos*/
          $sSQL="Select * From t_direccion WHERE cod_direccion= '$cod_direccion'";
          $result=$link->query($sSQL);
          $row=$result->fetch_array();
          $direccion= $row["direccion"];
          echo $direccion?></td>
        </tr>
        <tr>
          <td bgcolor="#0099FF">Cargo: </td>
          <td bgcolor="#0099FF"><?php 
          $sSQL="Select * From t_cargo WHERE cod_cargo= '$cod_cargo'";
          $result=$link->query($sSQL);
          $row=$result->fetch_array();
          $cargo= $row["cargo"];
          echo $cargo?></td>
          <td bgcolor="#0099FF">Tipo empleado: </td>
          <td bgcolor="#0099FF"><?php 
          $sSQL="Select * From t_tipo_empleado WHERE cod_tipo_empleado = '$cod_tipo_empleado'";
          $result=$link->query($sSQL);
          $row=$result->fetch_array();
          $tipo_empleado= $row["tipo_empleado"];
          echo $tipo_empleado;
 //         }
		  ?></td>
        </tr>
        <tr>
          <td bgcolor="#CCCCCC">Usuario:</td>
          <td colspan="3" bgcolor="#CCCCCC"><label> <?php echo $usuario ?></label></td>
        </tr>
        <tr>
          <td bgcolor="#0099FF">Contrase&ntilde;a:</td>
          <td colspan="3" bgcolor="#0099FF"><input name="contra" type="password" id="contra" value="<?php echo $contrasena?>"></td>
        </tr>
        <tr>
          <td height="30" colspan="4" bgcolor="#CCCCCC"><label>
            <div align="center">
              <input type="submit" name="Submit" value="Actualizar">
              <input name="seleccion" type="hidden" id="seleccion" value="2">
              <?php if (isset($mensaje) && $mensaje==1){echo 'Actualizacion Exitosa';}?>
            </div></td>
        </tr>
      </table>
    </form>
  </div>

</div>
</body>
</html>