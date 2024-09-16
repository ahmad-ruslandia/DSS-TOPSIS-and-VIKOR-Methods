<?php
class Kriteria extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		error_reporting(0);
		if ($this->session->userdata('logged') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('backend/kriteria_model');
	}

	function index()
	{
		$data['rows'] = $this->kriteria_model->tampil();
		$this->load->view('backend/kriteria/v_tampil', $data);
	}

	public function tambah()
	{
		$this->form_validation->set_rules('kode', 'Kode', 'required|is_unique[tb_kriteria.kode_kriteria]');
		$this->form_validation->set_rules('nama', 'Nama', 'required');
		$this->form_validation->set_rules('atribut', 'Atribut', 'required');
		$this->form_validation->set_rules('bobot', 'Bobot', 'required');

		$data['title'] = 'Tambah Kriteria';

		if ($this->form_validation->run() === FALSE) {
			$this->load->view('backend/kriteria/v_tambah', $data);
		} else {
			$fields = array(
				'kode_kriteria' => $this->input->post('kode'),
				'nama_kriteria' => $this->input->post('nama'),
				'atribut' => $this->input->post('atribut'),
				'bobot' => $this->input->post('bobot'),
			);
			$this->kriteria_model->tambah($fields);
			echo $this->session->set_flashdata('msg', 'success');
			redirect('backend/kriteria');
		}
	}

	public function ubah($ID = null)
	{
		$this->form_validation->set_rules('nama', 'Nama', 'required');
		$this->form_validation->set_rules('atribut', 'Atribut', 'required');
		$this->form_validation->set_rules('bobot', 'Bobot', 'required');

		$data['title'] = 'Ubah Kriteria';

		if ($this->form_validation->run() === FALSE) {
			$data['rowl'] = $this->kriteria_model->get_kriteria($ID);
			$this->load->view('backend/kriteria/v_ubah', $data);
		} else {
			$fields = array(
				'nama_kriteria' => $this->input->post('nama'),
				'atribut' => $this->input->post('atribut'),
				'bobot' => $this->input->post('bobot'),
			);
			$this->kriteria_model->ubah($fields, $ID);
			echo $this->session->set_flashdata('msg', 'success-ubah');
			redirect('backend/kriteria');
		}
	}

	public function hapus($ID = null)
	{
		$this->kriteria_model->hapus($ID);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/kriteria');
	}

	public function cetak($search = '')
	{
		$data['rows'] = $this->kriteria_model->tampil($search);
		view_cetak('backend/kriteria/cetak', $data);
	}
}
