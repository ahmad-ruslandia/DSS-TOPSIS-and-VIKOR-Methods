<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('Visitor_model', 'visitor_model');
		$this->load->model('Site_model', 'site_model');
		$this->visitor_model->count_visitor();
	}

	function index()
	{
		//$this->output->enable_profiler(TRUE);
		$site = $this->site_model->get_site_data()->row_array();
		$data['site_name'] = $site['site_name'];
		$data['site_title'] = $site['site_title'];
		$site_info = $this->db->get('tbl_site', 1)->row();
		$data['icon'] = $site_info->site_favicon;
		$this->load->view('home_view', $data);
	}
}
