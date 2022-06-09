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

	function detail($name)
		{
			$name = urldecode($name);

			$model = $this->Model_Role->view_detail($name);

			$list_data 	= array(
				'data' => $model,
				'role_name' => $name
		    );

			$this->load->view('Roles/v_detail',$list_data);
		}
}

?>