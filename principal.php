<? session_start()?>
<html><head>
<title>Soporte</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="jquery-latest.js"></script> 
<script language="JavaScript">
//Ajusta el tamaño de un iframe al de su contenido interior para evitar scroll
function autofitIframe(id){
id.style.height= 50+"px";
if (!window.opera && document.all && document.getElementById){
id.style.height=id.contentWindow.document.body.scrollHeight;
} else if(document.getElementById) {
id.style.height=id.contentDocument.body.scrollHeight+"px";
}
}
</script>

<link rel="stylesheet" href="estilop.css" type="text/css" media="screen" />			<!--estilo de la pagina-->
<link rel="stylesheet" href="pro_dropdown_2/pro_dropdown_2.css" type="text/css"/>   <!--estilo del menú-->

</head>
<body>
<div id="contenedor">
<div id="cabecera_usu"></div>
<?php
	if (!empty($_SESSION["usu"])) 
  	{
	 $usuario2=$_SESSION['usu']; 
	 include ("conexion.php");
	 $link=Conectarse(); 
  	 $result=$link->query("select * from t_empleado where usuario='$usuario2'");
  	 $row = $result->fetch_array();
     
	   //Datos Usado para el Técnico
	 $nombre=$row["pnombre"];
	 $apellido = $row["papellido"];
       
	 /***************************************************************************************************/
     $tipoemp= $row["cod_tipo_empleado"];
       if ($tipoemp==1) //si es Informatica
	    {//header("location:principal.php");
		 ?>
<div id="menu">
      <ul id="nav" name="nav">
         <li class="top"><a href="soport/soporte_abiertos.php" target="cuerpo" class="top_link"><span>Inicio</span></a></li>
         <li class="top"><a class="top_link"><span class="down">Soporte</span></a>
            <ul class="sub">
               <li><a href="soport/soporte.php" target="cuerpo">Nuevo Soporte</a></li>
               <li><a href="soport/consulta_soporte.php" target="cuerpo">Consultar Soporte</a></li>
            </ul>
         </li>
         <li class="top"><a class="top_link"><span class="down">Servicio</span></a>
            <ul class="sub">
               <li><a href="serv/solicitud_servicio.php" target="cuerpo">Solicitar Servicio</a></li>
               <li><a href="serv/servicio_usuario.php" target="cuerpo">Consultar Servicio</a></li>
            </ul>
         </li>
         <li class="top"><a class="top_link"><span class="down">Usuario</span></a>
            <ul class="sub">
               <li><a href="incluir.php" target="cuerpo">Nuevo</a></li>
               <li> <a href="actualizar_usu.php" target="cuerpo">Modificar</a></li>
               <li><a href="">Eliminar</a></li>
            </ul>
         </li>
         <li class="top"><a href="http://infomapa.chacao.gob.ve/sigar/" target="_blank" class="top_link"><span>Mapa</span></a></li>
			<li class="top"><a href="http://www.chacao.gob.ve/ipca/" target="_blank" class="top_link"><span>P&aacute;gina Web</span></a></li>
			<li class="top"><a href="destruirseccion.php" class="top_link"><span>Salir</span></a></li>
		</ul>
  </div>
    <div id="nombre_usu"> Usuario: <? echo $nombre," ", $apellido ?>
  </div>
   <div id="cuerpo"> 
     <iframe width="100%" id="the_iframe"  onLoad="autofitIframe(the_iframe);" src="soport/soporte_abiertos.php" scrolling="NO" frameborder="0" name="cuerpo"></iframe> 
	    <?php
		}
	   elseif ($tipoemp==2)//si es de Servicio
	    {
		?>
        <div id="menu">
    <ul id="nav" name="nav">
      <li class="top"><a href="principal.php"class="top_link" ><span>Inicio</span></a></li>
      <li class="top"><a class="top_link"><span class="down">Soporte</span></a>
        <ul class="sub">
          <li><a href="soport/solicitud_soporte.php" target="cuerpo">solicitud</a></li>
          <li><a href="soport/soporte_usuario.php" target="cuerpo">consulta</a></li>
        </ul>
      </li>
      <li class="top"><a class="top_link"><span class="down">Servicio</span></a>
        <ul class="sub">
          <li><a href="serv/servicio.php" target="cuerpo">Nuevo Servicio</a></li>
          <li><a href="serv/consulta_servicio.php" target="cuerpo">Consulta Servicios</a></li>
          <li><a href="serv/servicio_abiertos.php" target="cuerpo">Servicios Abiertos</a></li>          
        </ul>
      </li>
      <li class="top"><a class="top_link"><span class="down">Usuario</span></a>
        <ul class="sub">
          <li><a href="actualizar_usu.php" target="cuerpo" >Modificar</a></li>
        </ul>
      </li>
      <li class="top"><a class="top_link"><span class="down">Veh&iacute;culo</span></a>
        <ul class="sub">
          <li><a href="serv/agregar_vehiculo.php" target="cuerpo" >Agregar</a></li>
        </ul>
      </li>
      <li class="top"><a href="http://sigar.chacao.gob.ve/ipca/" target="_blank" class="top_link"><span>Mapa</span></a></li>
      <li class="top"><a href="http://www.chacao.gob.ve/ipca/" target="_blank" class="top_link"><span>P&aacute;gina Web</span></a></li>
      <li class="top"><a href="destruirseccion.php" class="top_link"><span>Salir</span></a></li>
    </ul>
  </div>
    <div id="nombre_usu"> Usuario: <? echo $nombre," ", $apellido ?>
  </div>
   <div id="cuerpo"> 
     <iframe width="100%" id="the_iframe"  onLoad="autofitIframe(the_iframe);" src="serv/servicio_abiertos.php" scrolling="NO" frameborder="0" name="cuerpo"></iframe> 
	    <?php
		}
		elseif ($tipoemp==3)//si es funcionario general
	    {
		?>
	<div id="menu">
    <ul id="nav" name="nav">
      <li class="top"><a href="principal.php"class="top_link" ><span>Inicio</span></a></li>
      <li class="top"><a class="top_link"><span class="down">Solicitud</span></a>
        <ul class="sub">
          <li><a href="soport/solicitud_soporte.php" target="cuerpo">Soporte</a></li>
          <li><a href="serv/solicitud_servicio.php" target="cuerpo">Servicio</a></li>
        </ul>
      </li>
      <li class="top"><a class="top_link"><span class="down">Consulta</span></a>
        <ul class="sub">
          <li><a href="soport/soporte_usuario.php" target="cuerpo">Consultar Soporte</a></li>
          <li><a href="serv/servicio_usuario.php" target="cuerpo">Consultar Servicio</a></li>          
        </ul>
      </li>
      <li class="top"><a class="top_link"><span class="down">Usuario</span></a>
        <ul class="sub">
          <li><a href="actualizar_usu.php" target="cuerpo" >Modificar</a></li>
        </ul>
      </li>
      <li class="top"><a href="http://sigar.chacao.gob.ve/ipca/" target="_blank" class="top_link"><span>Mapa</span></a></li>
      <li class="top"><a href="http://www.chacao.gob.ve/ipca/" target="_blank" class="top_link"><span>P&aacute;gina Web</span></a></li>
      <li class="top"><a href="destruirseccion.php" class="top_link"><span>Salir</span></a></li>
    </ul>
  </div>
  <div id="nombre_usu"> Usuario: <? echo $nombre," ", $apellido ?>
  </div>
  <div id="cuerpo" >
  <iframe width="100%" id="the_iframe"  onLoad="autofitIframe(the_iframe);" src="cuerpo3.php" scrolling="NO" frameborder="0" name="cuerpo"></iframe>
  </div>
	    <?php
		}	 
	 
	 /************************************************************************************************************/ 	 
	  
	}
	else
	{?>
     <script type="text/javascript">
		window.location="index.php";
	 </script>
	 <?php
	}
?>

  <div id="pie" align="center">Sistema Creado por José Reina</div>
</div>

</body>
</html>