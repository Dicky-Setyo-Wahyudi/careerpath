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
			$this->load->library('csvimport');
		}

	function index()
		{
			$this->load->view('Upload/v_upload');
		}

	function import_csv()
		{
	        $data['error'] 				= '';
	        $config['upload_path'] 		= 'assets/upload_csv/';
	        $config['allowed_types'] 	= 'csv';
	        $config['max_size'] 		= 2048;

	        $this->load->library('upload', $config);
	        $this->upload->initialize($config);


	        // If upload failed, display error
	        if (!$this->upload->do_upload('Upload')) 
	        	{
	            	$data['error'] = $this->upload->display_errors();

	            	$this->load->view('Upload/v_upload', $data);
	        	} 
	        else 
	        	{
	            	$file_data = $this->upload->data();
	            	$file_path =  'assets/upload_csv/'.$file_data['file_name'];
	            
		            if ($this->csvimport->get_array($file_path)) 
		            	{
		                	$csv_array = $this->csvimport->get_array($file_path);
		                	// var_dump($csv_array);
		                	// exit;
		                
		                	foreach ($csv_array as $row) 
		                		{
				                    $insert_data = array(
				                        'current_roles'			=> $row['awal'],
										'skill_role_owned'		=> $row['jml_skill_awal'],
										'goal_roles'			=> $row['tujuan'],
										'skill_role_goal'		=> $row['jml_skill_tujuan'],
										'skill_role_dont_have'	=> $row['jumlah_skill_yang_belum'],
										'name_skills'			=> $row['daftar_skill_belum_terpenuhi'],
				                    );
				                    $this->db->insert('upload',$insert_data);
				                    delete_files($file_data['file_path']);
		                		}
		                	
		                	$this->session->set_flashdata('success', 'Csv Data Imported Succesfully');
		                	redirect('Upload');
		            	}

	            	else
	            		{
	            			$data['error'] = "Error occured";
	                		$this->load->view('Upload/v_upload', $data);
	            		} 
	            }
		}

	function import_excel()
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
		                        $current_role			= $worksheet->getCellByColumnAndRow(1, $row)->getValue();
		                        $skill_role_owned		= $worksheet->getCellByColumnAndRow(2, $row)->getValue();
		                        $goal_roles				= $worksheet->getCellByColumnAndRow(3, $row)->getValue();
		                        $skill_role_goal		= $worksheet->getCellByColumnAndRow(4, $row)->getValue();
		                        $skill_role_dont_have	= $worksheet->getCellByColumnAndRow(5, $row)->getValue();
		                        $name_skill 			= $worksheet->getCellByColumnAndRow(6, $row)->getValue();

	                        	$data[]			= array(
			                            					'current_roles'			=> $current_role,
			                            					'skill_role_owned'		=> $skill_role_owned,
			                            					'goal_roles'			=> $goal_roles,
			                            					'skill_role_goal'		=> $skill_role_goal,
			                            					'skill_role_dont_have'	=> $skill_role_dont_have,
			                            					'name_skills' 			=> $name_skill
	                       	 				   			);
	                    	} 
	                }
        
                	
                	$this->db->insert_batch('upload', $data);
                	$this->session->set_flashdata('success','Disimpan');
                	redirect('upload');
            	}
            
            else
            	{
                	$this->session->set_flashdata('error','Gagal');
                	redirect('upload');
            	}
        }

 //    function tes_import()
 //        {
 //            if(isset($_FILES["Upload"]["name"]))
 //            	{
	//                 // upload
	//                 $file_tmp 	= $_FILES['Upload']['tmp_name'];
	//                 $file_name 	= $_FILES['Upload']['name'];
	//                 $file_size 	= $_FILES['Upload']['size'];
	//                 $file_type	= $_FILES['Upload']['type'];
	//                 // move_uploaded_file($file_tmp,"uploads/".$file_name); // simpan filenya di folder uploads
	                
	//                 $object = PHPExcel_IOFactory::load($file_tmp);
	        
	//                 foreach($object->getWorksheetIterator() as $worksheet)
	//                 {
	        
	//                     $highestRow 	= $worksheet->getHighestRow();
	//                     $highestColumn 	= $worksheet->getHighestColumn();
	        
	//                     for($row=2; $row<=$highestRow; $row++)
	//                     	{
	// 	                        $id_roles		= $worksheet->getCellByColumnAndRow(1, $row)->getValue();
	// 	                        $id_skill 		= $worksheet->getCellByColumnAndRow(2, $row)->getValue();

	//                         	$data[]			= array(
	// 		                            					'id_roles'		=> $id_roles,
	// 		                            					'id_skill'		=> $id_skill
	//                        	 				   			);
	//                     	} 
	//                 }
        
                	
 //                	$this->db->insert_batch('tes_upload', $data);
        
 //                	$message = array
 //                		(
 //                    		'message'=>'<div class="alert alert-success">Import file csv berhasil disimpan di database</div>',
 //                		);
                
 //                	$this->session->set_flashdata($message);
 //                	redirect('upload');
 //            	}
            
 //            else
 //            	{
 //                 	$message = array
 //                 		(
 //                    		'message'=>'<div class="alert alert-danger">Import file gagal, coba lagi</div>',
 //                		);
                
 //                	$this->session->set_flashdata($message);
 //                	redirect('upload');
 //            	}
 //        }

}


?>