<?php

class Settings extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('Site_model', 'site_model');
		$this->load->library('upload');
		$this->load->helper('text');
	}

	function index()
	{
		$result = $this->site_model->get_site_data()->row_array();
		$data['site_id'] = $result['site_id'];
		$data['site_name'] = $result['site_name'];
		$data['site_title'] = $result['site_title'];
		$data['site_favicon'] = $result['site_favicon'];
		$this->load->view('backend/v_settings', $data);
	}

	function update()
	{
		$site_id = htmlspecialchars($this->input->post('site_id', TRUE), ENT_QUOTES);
		$site_name = htmlspecialchars($this->input->post('name', TRUE), ENT_QUOTES);
		$site_title = htmlspecialchars($this->input->post('title', TRUE), ENT_QUOTES);

		$config['upload_path'] = './theme/images/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp';
		$config['encrypt_name'] = FALSE;

		$this->upload->initialize($config);
		if (!empty($_FILES['logo_icon']['name'])) {
			if ($this->upload->do_upload('logo_icon')) {
				$img_icon = $this->upload->data();
				$icon = $img_icon['file_name'];
			}
			$this->site_model->update_information($site_id, $site_name, $site_title, $icon);
			$this->session->set_flashdata('msg', 'success');
			redirect('backend/settings');
		} elseif (!empty($_FILES['logo_icon']['name'])) {
			if ($this->upload->do_upload('logo_icon')) {
				$img_icon = $this->upload->data();
				$icon = $img_icon['file_name'];
			}
			$this->site_model->update_information_icon($site_id, $site_name, $site_title, $icon);
			$this->session->set_flashdata('msg', 'success');
			redirect('backend/settings');
		} else {
			$this->site_model->update_information_nologo($site_id, $site_name, $site_title);
			$this->session->set_flashdata('msg', 'success');
			redirect('backend/settings');
		}
	}
}
