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

	// function view_goal_roles($id)
	// 	{
	// 		$sql	= "SELECT upload.id_roles,roles.name_roles,upload.goal_roles FROM upload JOIN roles ON upload.id_roles = roles.id_roles WHERE NOT upload.skill_role_dont_have='0' AND roles.id_roles='$id'";
	// 		$db 	= $this->db->query($sql);
	// 		return $db->result();
	// 	}

	// SELECT roles_skills.id_roles,roles.name_roles,roles_skills.id_skill,skills.name_skill,upload.goal_roles FROM roles_skills JOIN roles ON roles_skills.id_roles = roles.id_roles JOIN skills ON roles_skills.id_skill = skills.id_skill JOIN upload ON upload.id_roles = roles.id_roles WHERE roles.id_roles='$id'

	// SELECT roles_skills.id_roles,roles.name_roles,roles_skills.id_skill,skills.name_skill,upload.* FROM roles_skills JOIN roles ON roles_skills.id_roles = roles.id_roles JOIN skills ON roles_skills.id_skill = skills.id_skill JOIN upload ON upload.id_roles = roles.id_roles
}

?>