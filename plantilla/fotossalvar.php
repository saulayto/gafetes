<?php

    date_default_timezone_set('America/Mexico_City');
    $date = date('Y-m-d H-i-s');
    ob_start();

  	$str="data:image/png;base64,"; 
   	$data=str_replace($str,"",$_POST['imagem']); 
    $data = base64_decode($data);
    $nombre = mktime().'-D-'.$date.'.png';
    file_put_contents('fotos/'.$nombre, $data);
    ob_end_clean();
    echo $nombre;
