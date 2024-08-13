<?php
class Alternatif extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		error_reporting(0);
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/alternatif_model');
	}

	function index()
	{
		$data['rows'] = $this->alternatif_model->tampil();
		$this->load->view('backend/alternatif/v_tampil', $data);
	}

	public function tambah()
	{
		$this->form_validation->set_rules('kode_alternatif', 'Kode Alternatif', 'required|is_unique[tb_alternatif.kode_alternatif]');
		$this->form_validation->set_rules('nama_alternatif', 'Nama Alternatif', 'required');

		$data['title'] = 'Tambah Alternatif';

		if ($this->form_validation->run() === FALSE) {
			$this->load->view('backend/alternatif/v_tambah', $data);
		} else {
			$fields = array(
				'kode_alternatif' => $this->input->post('kode_alternatif'),
				'nama_alternatif' => $this->input->post('nama_alternatif'),
				'keterangan' => $this->input->post('keterangan'),
				'alamat' => $this->input->post('alamat'),
				'nama_pengelola' => $this->input->post('nama_pengelola'),
				'nomor_telepon' => $this->input->post('nomor_telepon'),

			);
			$this->alternatif_model->tambah($fields);
			redirect('alternatif');
		}
	}

	public function ubah($ID = null)
	{
		$this->form_validation->set_rules('kode_alternatif', 'Kode Alternatif', 'required');
		$this->form_validation->set_rules('nama_alternatif', 'Nama Alternatif', 'required');

		$data['title'] = 'Ubah Alternatif';

		if ($this->form_validation->run() === FALSE) {
			$data['rowl'] = $this->alternatif_model->get_alternatif($ID);
			$this->load->view('backend/alternatif/v_ubah', $data);
		} else {
			$fields = array(
				'kode_alternatif' => $this->input->post('kode_alternatif'),
				'nama_alternatif' => $this->input->post('nama_alternatif'),
				'keterangan' => $this->input->post('keterangan'),
				'alamat' => $this->input->post('alamat'),
				'nama_pengelola' => $this->input->post('nama_pengelola'),
				'nomor_telepon' => $this->input->post('nomor_telepon'),
			);
			$this->alternatif_model->ubah($fields, $ID);
			redirect('alternatif');
		}
	}


	public function detail($ID = null)
	{
		$data['row'] = $this->alternatif_model->get_alternatif($ID);
		$data['title'] = $data['row']->nama_alternatif;
		load_view('alternatif/detail', $data);
	}

	public function hapus($ID = null)
	{
		$this->alternatif_model->hapus($ID);
		redirect('alternatif');
	}

	public function cetak($search = '')
	{
		$data['rows'] = $this->alternatif_model->tampil($search);
		view_cetak('backend/alternatif/cetak', $data);
	}
}
