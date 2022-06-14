<?php

defined('BASEPATH') OR exit ('No direct script access allowed');


/**
* 
*/
class Model_Role extends CI_Model
{
	public function __construct(){
		$this->load->database();
	}

	function list_role()
		{
			$sql 	= "SELECT * FROM roles";
			$db 	= $this->db->query($sql);
			return $db->result();
		}

	function view_detail($name, $parent=[])
		{
			// print_r($name);
			$parent[] = $name;

			// $sql 	= "SELECT current_roles, goal_roles, name_skills FROM upload WHERE current_roles = 'Business Analyst'";
			$sql 	= "SELECT current_roles, goal_roles, name_skills FROM upload WHERE current_roles = ? ";
			// $sql 	= "SELECT * FROM upload";
			// print_r($sql);
			// die;

			// var_dump($sql);
			// exit;

			$db = $this->db->query($sql,array($name));
			// print_r($db);
			// die;
			// var_dump($db);
			// exit;

			$roles = [];

			
			foreach($db->result_array() as $idx => $row){
				
				if(!in_array($row['goal_roles'], $parent) ){
					
					$row['children'] = $this->view_detail($row['goal_roles'], $parent);
					$row['name_skills'] = json_decode($row['name_skills']);
					
					$roles[] = $row;
				}
			}

			// print_r($roles);
			// die;
			// var_dump($roles);
			// exit;
			return $roles;
			
		}	
}

?>