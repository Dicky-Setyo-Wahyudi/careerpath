<?php

defined('BASEPATH') OR exit ('No direct script access allowed');


/**
* 
*/
class Model_Role extends CI_Model
{
	function list_role()
		{
			$sql 	= "SELECT * FROM roles";
			$db 	= $this->db->query($sql);
			return $db->result();
		}

	function view_detail($id)
		{
			$sql 	= "SELECT roles_skills.id_roles,roles.name_roles,roles_skills.id_skill,skills.name_skill
					   FROM roles_skills JOIN roles ON roles_skills.id_roles = roles.id_roles 
					   JOIN skills ON roles_skills.id_skill = skills.id_skill WHERE roles.id_roles='$id'";
			$db 	= $this->db->query($sql);
			return $db->result();
		}

	function view_detail_row($id)
		{
			$sql 	= "SELECT roles_skills.id_roles,roles.name_roles,roles_skills.id_skill,skills.name_skill
					   FROM roles_skills JOIN roles ON roles_skills.id_roles = roles.id_roles 
					   JOIN skills ON roles_skills.id_skill = skills.id_skill WHERE roles.id_roles='$id'";
			$db 	= $this->db->query($sql);
			return $db->row();
		}
}

?>