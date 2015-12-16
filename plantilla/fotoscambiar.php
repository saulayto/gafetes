<?php

    date_default_timezone_set('America/Mexico_City');

    ob_start();

  	$str="data:image/png;base64,"; 
   	$data=str_replace($str,"",$_POST['imagem']); 
    $data = base64_decode($data);
    file_put_contents($_POST['nombre'], $data);
    ob_end_clean();
    echo $_POST['nombre'];
