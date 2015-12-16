<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class C_test extends CI_Controller {
 
    function __construct()
    {
        parent::__construct();
        $this->load->library("Pdf");
    
    }
 
    public function create_pdf() {

   

    /**
    * Creates an example PDF TEST document using TCPDF
    * @package com.tecnick.tcpdf
    * @abstract TCPDF - Example: Default Header and Footer
    * @author Nicola Asuni
    * @since 2008-03-04
    */
 
    // create new PDF document
    $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);    
 
    // set document information
    $pdf->SetCreator(PDF_CREATOR);
    $pdf->SetAuthor('Guadalajara');
    $pdf->SetTitle('Formato Guadalajara');
    $pdf->SetSubject('Formatos Espacios Abiertos');
    $pdf->SetKeywords('Guadalajara, centro_historico');   
 
    // set default header data
    $pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH,'','', array(91,104,113), array(91,104,113));
    $pdf->setFooterData(array(91,104,113), array(91,104,113)); 
 
    // set header and footer fonts
    $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
    $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
 
    // set default monospaced font
    $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED); 
 
    // set margins
    $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
    $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
    $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);    
 
    // set auto page breaks
    $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM); 
 
    // set image scale factor
    $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);  
 
    // set some language-dependent strings (optional)
    if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
        require_once(dirname(__FILE__).'/lang/eng.php');
        $pdf->setLanguageArray($l);
    }   
 
    // ---------------------------------------------------------    
 
    // set default font subsetting mode
    $pdf->setFontSubsetting(true);   
 
    // Set font
    // dejavusans is a UTF-8 Unicode font, if you only need to
    // print standard ASCII chars, you can use core fonts like
    // helvetica or times to reduce file size.

    $pdf->SetFont('times', '', 14, '', true);   
 
    
   // INICIA FORMATO DE DECLARACIÓN PERSONA FÍSICA

    $pdf->AddPage(); 
    $pdf->setTextShadow(array('enabled'=>true, 'depth_w'=>0.2, 'depth_h'=>0.2, 'color'=>array(196,196,196), 'opacity'=>1, 'blend_mode'=>'Normal'));    
    $html = <<<EOD
    <br>
    <h1>titulo</h1>
    <p style="text-align: right;">texto</p>
    <br>
    <br>

EOD;
    $pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);

    // TERMINA FORMATO DE DECLARACIÓN PERSONA FÍSICA



    // ---------------------------------------------------------    
 
    // Close and output PDF document
    // This method has several options, check the source code documentation for more information.
    $pdf->Output('formatos_guadalajara.pdf', 'I');    
 
    //============================================================+
    // END OF FILE
    //============================================================+
    }
}
 
/* End of file c_test.php */
/* Location: ./application/controllers/c_test.php */