<!DOCTYPE html>
<?php
session_start();
if (@!$_SESSION['uid']) {
  header("Location:index.php");
}
?>  
<html>
<head>
<head>
		<meta charset="UTF-8">
		<title>Publicar Productos</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<style>
			@media screen and (max-width:480px){
				#search{width:80%;}
				#search_btn{width:30%;float:right;margin-top:-32px;margin-right:10px;}
			}
		</style>
	</head>
<body background="images/fondo1.jpg" style="background-size: cover;">
	<center>
		<div style="background-color: rgb(44,85,69, 0.5)">
			<table width="1200" style=" margin: 0 auto; border-radius: 50px">
				<tr style="text-align: center;">
					<td width="150">
						<img src="images/LOGO1.png" width="150" height="150">
					</td>
					<td width="750" align="left">
						<a href="Inicio.php"><img src="images/Mercampo.png"></a>
					</td>
					<td width="150" align="center" >
						<a href="" name="user" style="font-size: 14pt; color: black"><strong><b id="hiper">Usuario: <?php echo $_SESSION['uid'];?></b></strong></a>
					</td>
					<td width="150" align="center">
						<a href="desconectar.php" style="font-size: 14pt; color: black"><b id="hiper"> Cerrar sesion</b></a>
					</td>
				</tr>
			</table>
		</div>
		<div style="margin-top: 15pt">
			<form action="validar-form.php" method="POST" enctype="multipart/form-data">
				<table width="800" style="background-color: rgb(44,85,69,0.8); margin: 0 auto; border-radius: 50px" cellpadding="10">
					<tr>
						<td align="center">
							<font style="font-size: 14pt; color: black"><b>Titulo</b></font>
						</td>
						<td>
							<input class="per" type="text" name="titulo">
						</td>
					</tr>
					<tr>
						<td align="center">
							<font style="font-size: 14pt; color: black"><b>Precio del producto por kilo</b></font>
						</td>
						<td>
							<input class="per" type="text" name="precio">
						</td>
					</tr>
					<tr>
						<td align="center">
							<font style="font-size: 14pt; color: black"><b>Informacion</b></font>
						</td>
						<td>
							&nbsp
						</td>
						<td align="center">
							<font style="font-size: 14pt; color: black"><b>Imagen</b></font>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea class="per" cols="60" rows='10' name="contenido"></textarea>
						</td>
						<td>
	                		<img id="uploadPreview" style="width: 300px; height: 300px;" align="up" style="background-color:#FFFFFF;"/>
	              		</td>
					</tr>
					<tr>
						<td align="center">
							<input type="submit" class="per" name="Enviar" value="Enviar">
						</td>
						<td>
							&nbsp
						</td>
	              		<td>
	                		<input id="uploadImage" type="file" name="imagen" onchange="PreviewImage();"  />
	                		<script type="text/javascript">

	                 		function PreviewImage() {
	                 			var oFReader = new FileReader();
	                    		oFReader.readAsDataURL(document.getElementById("uploadImage").files[0]);
	                    		oFReader.onload = function (oFREvent) {
	                    			document.getElementById("uploadPreview").src = oFREvent.target.result;
	                    		};
	                  		};
	                		</script>
	            		</td>
	            	</tr>
				</table>
			</form>
		</div>
	</center>

</body>
</html>