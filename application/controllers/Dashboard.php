<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('Auth_model');
		$this->load->model('Admin_model', 'admin');
		$this->load->model('Menu_model', 'menu');
		
		// check if user has been logged in
		is_logged_in();
	}
	public function index()
	{
		// get user information
		$data['user'] = $this->Auth_model->getUserByEmail( $this->session->userdata('email') );
		$data['title'] = 'Blockchain-Building Information Modelling (BIM) System';
		
		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('admin/home', $data);
		$this->load->view('templates/footer');
	}

}