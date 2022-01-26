<html>
<head>
<title>Nuevo Usuario</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
body {
	background-image: url();
}
.titulo {
	font-size: 20px;
	font-weight: bold;
}
#contenedor_usu {
	position: absolute;
	width: 570px;
	height: 300px;
	z-index: 1;
	left: 50%;
	top: 50%;
	margin-left: -285px;
	margin-top: -150px;
}
#contenedor_incluir_usu {
	position: absolute;
	width: 100%;
	height: 400px;
	z-index: 1;
}
</style>
</head>
<body>
<div id="contenedor_incluir_usu">
  <div id="contenedor_usu">
    <form name="form1" method="post" action="case.php">
      <table width="572" border="0" align="center">
        <tr>
          <td colspan="4" bgcolor="#CCCCCC"><div align="center" class="titulo">Ingreso de Usuario</div></td>
        </tr>
        <tr>
          <td colspan="4" bgcolor="#0099FF"> C&oacute;digo de Usuario:
            <label>
              <input name="cod_usu" type="text" id="cod_usu">
            </label></td>
        </tr>
        <tr>
          <td width="128" bgcolor="#CCCCCC">Primer Nombre: </td>
          <td width="144" bgcolor="#CCCCCC"><input name="pnombre" type="text" id="pnombre"></td>
          <td width="136" bgcolor="#CCCCCC">Segundo Nombre: </td>
          <td width="146" bgcolor="#CCCCCC"><input name="snombre" type="text" id="snombre"></td>
        </tr>
        <tr>
          <td bgcolor="#0099FF">Primer Apellido: </td>
          <td bgcolor="#0099FF"><input name="papellido" type="text" id="papellido"></td>
          <td bgcolor="#0099FF">Segundo Apellido: </td>
          <td bgcolor="#0099FF"><input name="sapellido" type="text" id="sapellido"></td>
        </tr>
        <tr>
          <td bgcolor="#CCCCCC">C&eacute;dula: </td>
          <td bgcolor="#CCCCCC"><input name="ced" type="text" id="ced"></td>
          <td bgcolor="#CCCCCC">Sexo: </td>
          <td bgcolor="#CCCCCC"><?php 
	 	   include("conexion.php"); 
	       $link=Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select * From t_sexo Order By sexo";
          $result=$link->query($sSQL);
          echo '<select name="sexo">';

          //Generamos el menu desplegable
          while ($row=$result->fetch_array())
          {echo '<option value='.$row["cod_sexo"].'>'.$row["sexo"];}
	  ?></td>
        </tr>
        <tr>
          <td bgcolor="#0099FF">Correo: </td>
          <td bgcolor="#0099FF"><input name="correo" type="text" id="correo"></td>
          <td bgcolor="#0099FF">Tel&eacute;fono: </td>
          <td bgcolor="#0099FF"><input name="tlf" type="text" id="tlf"></td>
        </tr>
        <tr>
          <td bgcolor="#CCCCCC">Derecci&oacute;n: </td>
          <td colspan="3" bgcolor="#CCCCCC"><?php 
	       $link=Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select * From t_direccion Order By direccion";
          $result=$link->query($sSQL);
          echo '<select name="direccion">';
          //Generamos el menu desplegable
          while ($row=$result->fetch_array())
          {echo '<option value='.$row["cod_direccion"].'>'.$row["direccion"];}
	  ?></td>
        </tr>
        <tr>
          <td bgcolor="#0099FF">Cargo: </td>
          <td bgcolor="#0099FF"><?php 
	       $link=Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select * From t_cargo Order By cargo";
          $result=$link->query($sSQL);
          echo '<select name="cargo">';
          //Generamos el menu desplegable
          while ($row=$result->fetch_array())
          {echo '<option value='.$row["cod_cargo"].'>'.$row["cargo"];}
	  ?></td>
          <td bgcolor="#0099FF">Tipo empleado: </td>
          <td bgcolor="#0099FF"><?php 
	       $link=Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select * From t_tipo_empleado Order By tipo_empleado";
          $result=$link->query($sSQL);
          echo '<select name="tipoemp">';

          //Generamos el menu desplegable
          while ($row=$result->fetch_array())
          {echo '<option value='.$row["cod_tipo_empleado"].'>'.$row["tipo_empleado"];} 
	  ?></td>
        </tr>
        <tr>
          <td bgcolor="#CCCCCC">Usuario:</td>
          <td bgcolor="#CCCCCC"><label>
            <input name="usu2" type="text" id="usu2">
          </label></td>
          <td bgcolor="#CCCCCC">Contrase&ntilde;a:</td>
          <td bgcolor="#CCCCCC"><input name="contra" type="text" id="contra"></td>
        </tr>
        <tr>
          <td bgcolor="#0099FF">Estatus del Usuario</td>
          <td colspan="3" bgcolor="#0099FF"><?php 
	       $link=Conectarse(); 
	      //Creamos la sentencia SQL y la ejecutamos
          $sSQL="Select * From t_status_empleado";
          $result=$link->query($sSQL);
          echo '<select name="status_empleado">';
          //Generamos el menu desplegable
          while ($row=$result->fetch_array())
          {echo '<option value='.$row["cod_status_empleado"].'>'.$row["status_empleado"];}
	  ?></td>
        </tr>
        <tr>
          <td height="30" colspan="4" bgcolor="#CCCCCC"><label>
            <div align="center">
              <input type="submit" name="Submit" value="Enviar">
              <input name="seleccion" type="hidden" id="seleccion" value="1">
            </div></td>
        </tr>
      </table>
    </form>
  </div>
</div>
</body>
</html>