<?php

class Site_model extends CI_Model
{

	function get_site_data()
	{
		$query = $this->db->get('tbl_site', 1);
		return $query;
	}

	function update_information($site_id, $site_name, $site_title, $icon)
	{
		$this->db->set('site_name', $site_name);
		$this->db->set('site_title', $site_title);
		$this->db->set('site_favicon', $icon);
		$this->db->where('site_id', $site_id);
		$this->db->update('tbl_site');
	}

	function update_information_icon($site_id, $site_name, $site_title, $site_description, $icon)
	{
		$this->db->set('site_name', $site_name);
		$this->db->set('site_title', $site_title);
		$this->db->set('site_favicon', $icon);
		$this->db->update('tbl_site');
	}


	function update_information_nologo($site_id, $site_name, $site_title)
	{
		$this->db->set('site_name', $site_name);
		$this->db->set('site_title', $site_title);
		$this->db->where('site_id', $site_id);
		$this->db->update('tbl_site');
	}
}
