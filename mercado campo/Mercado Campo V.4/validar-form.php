<?php
	require("db.php");
	
	$product_price=$_POST["product_price"];
	$product_title=$_POST["product_title"];
	$foto=$_FILES["imagen"]["name"];
	$ruta=$_FILES["imagen"]["tmp_name"];
	$destino="fotos/".$foto;
	copy($ruta,$destino);
	$product_content=$_POST["product_content"];
	$product_date=date("Y-m-d");

	$producto = "INSERT INTO product_info (Fecha,Titulo,Contenido,Foto,Precio) values ('$product_date','$product_title','$product_content','$destino','$product_price')";
	$resent=mysqli_query($mysqli,$producto);
	if ($resent==null) {
		echo "Error  no se han subido los valores";
		echo '<script>alert("ERROR NO SE SUBIERON LOS DATOS")</script> ';
		header("location: form.php");
		
		echo "<script>location.href='form.php'</script>";
	}else {
		echo '<script>alert("Datos subidos")</script> ';
		
		echo "<script>location.href='form.php'</script>";

		
	}
?>