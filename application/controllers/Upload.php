<?php


defined('BASEPATH') OR exit ('No direct script access allowed');


/**
* 
*/
class Upload extends CI_Controller
{
	
	function __construct()
		{
			parent::__construct();
			$this->load->library('upload');
		}

	function index()
		{
			$this->load->view('Upload/v_upload');
		}

	function import()
        {
            if(isset($_FILES["Upload"]["name"]))
            	{
	                // upload
	                $file_tmp 	= $_FILES['Upload']['tmp_name'];
	                $file_name 	= $_FILES['Upload']['name'];
	                $file_size 	= $_FILES['Upload']['size'];
	                $file_type	= $_FILES['Upload']['type'];
	                // move_uploaded_file($file_tmp,"uploads/".$file_name); // simpan filenya di folder uploads
	                
	                $object = PHPExcel_IOFactory::load($file_tmp);
	        
	                foreach($object->getWorksheetIterator() as $worksheet)
	                {
	        
	                    $highestRow 	= $worksheet->getHighestRow();
	                    $highestColumn 	= $worksheet->getHighestColumn();
	        
	                    for($row=2; $row<=$highestRow; $row++)
	                    	{
		                        $id_roles 		= $worksheet->getCellByColumnAndRow(1, $row)->getValue();
		                        $id_skill 		= $worksheet->getCellByColumnAndRow(2, $row)->getValue();

	                        	$data[]			= array(
			                            					'id_roles'			=> $id_roles,
			                            					'id_skill' 			=> $id_skill,
	                       	 				   			);
	                    	} 
	                }
        
                	
                	$this->db->insert_batch('tes_upload', $data);
        
                	$message = array
                		(
                    		'message'=>'<div class="alert alert-success">Import file csv berhasil disimpan di database</div>',
                		);
                
                	$this->session->set_flashdata($message);
                	redirect('upload');
            	}
            
            else
            	{
                 	$message = array
                 		(
                    		'message'=>'<div class="alert alert-danger">Import file gagal, coba lagi</div>',
                		);
                
                	$this->session->set_flashdata($message);
                	redirect('upload');
            	}
        }
}


?>