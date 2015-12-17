<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Altapuesto extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->helper('bars');
	}
	function index(){
		if ($this->session->userdata('logueado')) {
            $this->load->view('formapuesto');
        } else {
            redirect(base_url() . 'login');
        }
		
	}

}
?>