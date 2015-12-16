<?php

class Consultas extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    /************************************* INICIA EQUIPO ***************************************/

    public function insertar_locatario($nombre, $paterno, $materno, $foto, $giro, $antiguedad, $vende, $presentacion, $transporte, $instala, $permitido, $p1, $p2, $p3, $p4, $p5, $p6, $p7, $p8, $p9, $p10, $p11, $p12, $p13, $p14, $p15, $num_desistimiento, $des_desistimiento, $num_local) {
        $query = $this->db->query("CALL sp_insertar_locatario('".$nombre."','".$paterno."','".$materno."','".$foto."','" .$giro."',". $antiguedad.",'". $vende."','". $presentacion."','". $transporte."','". $instala."',". $permitido.",". $p1.",". $p2.",". $p3.",". $p4.",". $p5.",". $p6.",". $p7.",". $p8.",". $p9.",". $p10. ",". $p11.",". $p12.",". $p13.",". $p14.",". $p15.",".$num_desistimiento.",'".$des_desistimiento."',".$num_local." );");
        return $query->result();
    }


 /************************************* FIN EQUIPO ***************************************/
}
?>