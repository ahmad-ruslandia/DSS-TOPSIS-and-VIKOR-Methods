<?php
class Crips extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		error_reporting(0);
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/crips_model');
		$this->load->model('backend/kriteria_model');
	}

	function index()
	{
		$data['rows'] = $this->crips_model->tampil();
		$this->load->view('backend/crips/v_tampil', $data);
	}

	public function tambah()
	{
		$this->form_validation->set_rules('kode_kriteria', 'Kriteria', 'required');
		$this->form_validation->set_rules('nama_crips', 'Nama Crips', 'required');
		$this->form_validation->set_rules('nilai', 'Nilai', 'required|is_natural_no_zero');

		$data['title'] = 'Tambah Crips';

		if ($this->form_validation->run() === FALSE) {
			$this->load->view('backend/crips/v_tambah', $data);
		} else {
			$fields = array(
				'kode_kriteria' => $this->input->post('kode_kriteria'),
				'nama_crips' => $this->input->post('nama_crips'),
				'nilai' => $this->input->post('nilai'),
			);
			$this->crips_model->tambah($fields);
			redirect('crips');
		}
	}

	public function ubah($ID = null)
	{
		$this->form_validation->set_rules('kode_kriteria', 'Kriteria', 'required');
		$this->form_validation->set_rules('nama_crips', 'Nama Crips', 'required');
		$this->form_validation->set_rules('nilai', 'Nilai', 'required|is_natural_no_zero');

		$data['title'] = 'Ubah Crips';

		if ($this->form_validation->run() === FALSE) {
			$data['rowl'] = $this->crips_model->get_crips($ID);
			$this->load->view('backend/crips/v_ubah', $data);
		} else {
			$fields = array(
				'kode_kriteria' => $this->input->post('kode_kriteria'),
				'nama_crips' => $this->input->post('nama_crips'),
				'nilai' => $this->input->post('nilai'),
			);
			$this->crips_model->ubah($fields, $ID);
			redirect('crips');
		}
	}

	public function hapus($ID = null)
	{
		$this->crips_model->hapus($ID);
		redirect('crips');
	}

	public function cetak($search = '')
	{
		$data['rows'] = $this->crips_model->tampil($search);
		view_cetak('crips/cetak', $data);
	}
}
