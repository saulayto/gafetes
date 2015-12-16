<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * 
 */
class Consulta extends CI_Controller {

    public function __construct() {
        parent::__construct();

        $this->load->model('consultas');
    }


    function guardar_locatario() {

        extract($_POST);

        $datos = $this->consultas->insertar_locatario($nombre, $paterno, $materno, $foto, $giro, $antiguedad, $vende, $presentacion, $transporte, $instala, $permitido, $p1, $p2, $p3, $p4, $p5, $p6, $p7, $p8, $p9, $p10, $p11, $p12, $p13, $p14, $p15, $num_desistimiento, $des_desistimiento, $num_local);
        if ($datos) {
            echo json_encode(array('status' => TRUE, 'data' => ($datos)));
        } else {
            echo json_encode(array('status' => FALSE, 'error' => 'Nodata'));
        }

    }


    
}
?>