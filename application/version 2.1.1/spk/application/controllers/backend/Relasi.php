<?php
class Relasi extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		error_reporting(0);
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/relasi_model');
		$this->load->model('backend/kriteria_model');
		$this->load->model('backend/crips_model');
	}

	public function index()
	{
		$this->load->helper('form');
		$data['rows'] = $this->relasi_model->tampil($this->input->get('search'));
		$data['title'] = 'Bobot';

		$data['kriteria'] = $this->get_kriteria();
		$this->load->view('backend/relasi/v_tampil', $data);
	}

	public function ubah($ID = null)
	{
		$this->load->helper('form');
		$this->load->library('form_validation');

		$this->form_validation->set_rules('kode_crips[]', 'Crips', 'required|is_natural');

		$data['title'] = 'Ubah Bobot ';

		if ($this->form_validation->run() === FALSE) {
			$data['rows'] = $this->relasi_model->get_relasi($ID);

			if ($data['rows']) {
				$data['title'] .= $data['rows'][0]->nama_alternatif;
			}

			$this->load->view('backend/relasi/v_ubah', $data);
		} else {
			$this->relasi_model->ubah($this->input->post('kode_crips'));
			echo $this->session->set_flashdata('msg', 'success-ubah');
			redirect('backend/relasi');
		}
	}

	public function get_kriteria()
	{
		$arr = array();
		$rows = $this->kriteria_model->tampil();
		foreach ($rows as $row) {
			$arr[$row->kode_kriteria] = $row;
		}
		return $arr;
	}
}
