<?php

defined('BASEPATH') OR exit ('No direct script access allowed');


/**
* 
*/
class Role extends CI_Controller
{
	
	function __construct()
		{
			parent::__construct();
			$this->load->model('Model_Role');
		}

	function index()
		{
			$list 	= $this->Model_Role->list_role();

			$data 	= array(
								'lstRole' => $list
						   );
			$this->load->view('Roles/v_index',$data);
		}

	function detail($id)
		{
			// $id 		= $this->uri->segment('3')
			$detail 	= $this->Model_Role->view_detail($this->uri->segment(3));
			$role 		= $this->Model_Role->view_detail_row($id);

			$data 		= array(
									'lstDetail'	=> $detail,
									'role'		=> $role
							   );
			$this->load->view('Roles/v_detail',$data);
		}
}

?>