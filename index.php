<? session_start()?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
body {
	text-align: center;
}
.central {
	text-align: center;
	font-family: "Arial Black", Gadget, sans-serif;
	font-size: 36px;
}
#cuerpo {
	position: absolute;
	width: 400px;
	height: 456px;
	top: 50%; /* Buscamos el centro horizontal (relativo) del navegador */
	left: 50%; /* Buscamos el centro vertical (relativo) del navegador */
	/*z-index: 1;*/
	margin-top: -250px; /* Restamos la mitad de la altura del objeto con un margin-top */
	margin-left: -200px; /* Restamos la mitad de la anchura del objeto con un margin-left */
	background-color: #066;
	border-radius: 1em;
	padding: 10px;
	box-shadow: black 0.5em 0.5em 0.3em;
	}
#t_soporte {
	position: absolute;
	width: 400px;
	height: 90;
	left: 50%; /* Buscamos el centro vertical (relativo) del navegador */
	/*z-index: 1;*/
	margin-left: -200px; /* Restamos la mitad de la anchura del objeto con un margin-left */
	background-color: #FFFFFF;
	z-index: 1;
	background-image: url(imagenes/servicio%20y%20soporte.jpg);
}
#tablaingreso {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 1;
	left: 53px;
	top: 115px;
}
#imagen_sop {
	position: absolute;
	width: 200px;
	height: 115px;
	z-index: 1;
	left: 87px;
	top: 256px;
}
</style>
<title>Control Soporte</title>
</head>
<body>
<div id="cuerpo">
<div id="t_soporte"><p class="central">&nbsp;</p></div>
<div id="tablaingreso">
<FORM name="form1"  METHOD="POST">
  <table width="318" border="1" align="center" bgcolor="#FFCC33">
    <tr>
      <td colspan="2"><div align="center">Ingreso de Usuario </div></td>
   </tr>
    <tr>
      <td width="162">Usuario:</td>
      <td width="144"><input type="text" name="usu" id="usuario" /></td>
    </tr>
	<tr>
      <td width="162" height="26">Contrase&ntilde;a:</td>
      <td width="144"><input type="password" name="contra" id="contrasena" /></td>
     </tr>
	 <tr>
	    <td height="47" colspan="2"><label>
	      <div align="center">
            <INPUT name="enviar" TYPE="submit" id="enviar" VALUE="Entrar">
          </div>
       </label></td>
     </tr>
   </table>  
</FORM>
</div>
<div id="imagen_sop"><img src="imagenes/contrasena.gif" alt="" width="229" height="195" /></div>

</div>
<?php
include ("conexion.php");
$link=Conectarse(); 

// pregunto si usu viene mediente el metodo POST, es decir le dimos click a "entrar"
if (!(empty ($_POST['usu'])))
{
	$usuario=$_POST['usu'];
	$contra=$_POST['contra'];
    $_SESSION['usu']=$usuario;	
	$consulta="SELECT * FROM t_empleado WHERE usuario='$usuario' AND contrasena='$contra'";
	$resultados= $link->query($consulta) or die("error consulta");
	if ($resultados->num_rows>0)
	{			
   	 $row=$resultados->fetch_array();
	   $tipoemp= $row["cod_tipo_empleado"];
		 ?>
        <script type="text/javascript">
					window.location="principal.php";
		 		</script>
	    <?php
	}	
	else
	{ 
	  ?>
       <script type="text/javascript">
	        alert("Usuario o Contraseña Incorrecta");
			document.getElementById('usuario').focus();
			//window.location="index.php";
	   </script>
	  <?php
	  session_destroy();
    }
}
?>
</body>
</html>