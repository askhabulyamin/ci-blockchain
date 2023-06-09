<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Block extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Auth_model', 'Auth');
		$this->load->library('encryption'); // load library secure yg telah kita buat
		$this->load->model('Block_model');
		$this->load->model('Admin_model', 'admin');
		
		$this->load->library('form_validation');
		// is_logged_in();
	}
	
	public function index()
	{
		// get user information
		$data['user'] = $this->Auth->getUserByEmail( $this->session->userdata('email') );
		$getid = $_GET['id'];
		$data['block'] = $this->Block_model->getBlock($getid);
		$data['title'] = 'Block Management';
		
		$this->form_validation->set_rules('block', 'block', 'required|trim|alpha_numeric_spaces', [
			'alpha_numeric_spaces' => 'block name must contains alpha numeric only!'
			]);
			if ($this->form_validation->run() == FALSE)
			{
				$this->load->view('templates/header', $data);
				$this->load->view('templates/sidebar', $data);
				$this->load->view('templates/topbar', $data);
				$this->load->view('bim/block', $data);
				$this->load->view('templates/footer');
			}else{
				$this->Block_model->addblock($this->input->post('block'));
			}
			
	}

	public function home()
	{
		// get user information
		$data['user'] = $this->Auth->getUserByEmail( $this->session->userdata('email') );
		
		$getid = $_GET['id'];
		$data['block'] = $this->Block_model->getBlock($getid);
		$data['title'] = 'Block Folder';
		
		$this->form_validation->set_rules('block', 'block', 'required|trim|alpha_numeric_spaces', [
			'alpha_numeric_spaces' => 'block name must contains alpha numeric only!'
			]);
			if ($this->form_validation->run() == FALSE)
			{
				$this->load->view('templates/header', $data);
				$this->load->view('templates/sidebar', $data);
				$this->load->view('templates/topbar', $data);
				$this->load->view('bim/home', $data);
				$this->load->view('templates/footer');
			}else{
				$this->Block_model->addblock($this->input->post('block'));
			}
			
	}

	// Validation
	public function validation()
	{
		// get user information
		$data['user'] = $this->Auth->getUserByEmail( $this->session->userdata('email') );
		
		$getid = $_GET['id'];
		// var_dump($getid);
		$data['block'] = $this->Block_model->getBlock($getid);
		$data['role'] = $this->admin->getRole(); 

		$data['title'] = 'Validation';
		
		// cek hash blockchain
		$prev = $this->Block_model->getLastBlock();
		// print_r($prev[0]['previous_blockchain']);die();
		if ($prev){
			if (is_null($prev[0]['previous_blockchain']))
			{
				$prev_hash = "0000000000000000xxx";
			}else{
				$prev_hash =$prev[0]['previous_blockchain'];
			}
			$prev_hash = $prev_hash;
	
		}else{
			$prev_hash = "0000000000000000xxx";

		}
		$data['hash'] = $prev_hash;
		// $prev_hash = "0000000000000000xxx";
		// print_r($this->encryption->encrypt('ml'));die();
		$this->form_validation->set_rules('project_name', 'Project Name', 'required|trim');
		$this->form_validation->set_rules('type', 'Type', 'required|trim');
		// $this->form_validation->set_rules('role', 'Role', 'required|trim');

		if ($this->form_validation->run() == false){
			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('bim/validation', $data);
			$this->load->view('templates/footer');

		}else{ 	
			$filename = $_FILES['file']['name'];
			$newfile = date('YmdHis').".".pathinfo($filename, PATHINFO_EXTENSION);
			$data = [
				'project_name' => $this->input->post('project_name'),
				'type' => $this->input->post('type'),
				'role' => $this->session->userdata('role_id'),
				'sub_menuid' => $this->input->post('getidsub'),
				'file' => $newfile,
				'previous_blockchain' => $this->encryption->encrypt($prev_hash),
				'hash_bim' => $this->encryption->encrypt($prev_hash),
				'nonce' => $this->encryption->encrypt($prev_hash),
				'transaction' => $this->encryption->encrypt($prev_hash),
				'date_create' => date('Y-m-d H:i:s'),
				'create_by' =>$this->session->userdata('email'),
			];

			// send it to model
			$this->Block_model->addProject($data);
		}
				
	}
	// Validation
	public function transaction()
	{
		// get user information
		$data['user'] = $this->Auth->getUserByEmail( $this->session->userdata('email') );
		$token = $this->Auth->getUserByEmail( $this->session->userdata('email') );
		// $getid = $_GET['id'];
		// $data['block'] = $this->Block_model->getBlock($getid);
		$data['transaction'] = $this->Block_model->getTransaction($token['token']); 

		if ($this->Block_model->getSaldo($token['token'])){
			$getsaldo = $this->Block_model->getSaldo($token['token']);
			$saldo = $getsaldo[0]['value'];
			// var_dump($getsaldo);
		} else {
			$saldo = 0;
		}
		$data['saldo'] = $saldo;
		$data['title'] = 'Transaction';
		
		// cek hash blockchain
		$prev = $this->Block_model->getLastTransaction();
		// print_r($prev[0]['previous_blockchain']);die();
		if ($prev){
			if (is_null($prev[0]['value']))
			{
				$prev_hash = "0";
			}else{
				$prev_hash =$prev[0]['value'];
			}
			$prev_hash = $prev_hash;
	
		}else{
			$prev_hash = "0";

		}
		$data['hash'] = $prev_hash + $this->input->post('value');
		// $prev_hash = "0000000000000000xxx";
		// print_r($this->encryption->encrypt('ml'));die();
		$this->form_validation->set_rules('to_address', 'To Address', 'required|trim');
		$this->form_validation->set_rules('value', 'Value', 'required|trim');
		// $this->form_validation->set_rules('role', 'Role', 'required|trim');

		if ($this->form_validation->run() == false){
			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('bim/transaction', $data);
			$this->load->view('templates/footer');

		}else{ 
			// cek token di user token	
			$cektoken = $this->Block_model->getToken($this->input->post('to_address'));

			if ($cektoken){
				$data = [
					'id_block' => '',
					'address' => $this->input->post('address'),
					'to_address' => $this->input->post('to_address'),
					'value' => $this->input->post('value'),
					'status' => '0',
					'date_create' =>  date('Y-m-d H:i:s'),
				];
				$this->Block_model->addTransaction($data);
	
			} else {
				message('Failed Send! Smart Contract is invalid.', 'danger', 'block/transaction');
			}

			// send it to model
		}
				
	}

	// Validation
	public function smartcontract()
	{
		// get user information
		$data['user'] = $this->Auth->getUserByEmail( $this->session->userdata('email') );
		$token = $this->Auth->getUserByEmail( $this->session->userdata('email') );
		// $getid = $_GET['id'];
		// $data['block'] = $this->Block_model->getBlock($getid);
		$data['smartcontract'] = $this->Block_model->getTransaction($token['token']); 
		if ($this->Block_model->getSaldo($token['token'])){
			$getsaldo = $this->Block_model->getSaldo($token['token']);
			$saldo = $getsaldo[0]['value'];
			// var_dump($getsaldo);
		} else {
			$saldo = 0;
		}
		$data['saldo'] = $saldo;
		$data['title'] = 'Smart Contract';

		$this->form_validation->set_rules('to_address', 'To Address', 'required|trim');
		$this->form_validation->set_rules('value', 'Value', 'required|trim');
		// $this->form_validation->set_rules('role', 'Role', 'required|trim');

		if ($this->form_validation->run() == false){
			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('bim/smart_contract', $data);
			$this->load->view('templates/footer');

		}
				
	}

	// Verification
	public function verification()
	{
		// get user information
		$data['user'] = $this->Auth->getUserByEmail( $this->session->userdata('email') );
		
		// $getid = $_GET['id'];
		// $data['block'] = $this->Block_model->getBlock($getid);
		$data['title'] = 'block Management';
		
		$this->form_validation->set_rules('block', 'block', 'required|trim|alpha_numeric_spaces', [
			'alpha_numeric_spaces' => 'block name must contains alpha numeric only!'
			]);
			if ($this->form_validation->run() == FALSE)
			{
				$this->load->view('templates/header', $data);
				$this->load->view('templates/sidebar', $data);
				$this->load->view('templates/topbar', $data);
				$this->load->view('bim/verification', $data);
				$this->load->view('templates/footer');
			}else{
				$this->Block_model->addblock($this->input->post('block'));
			}
			
	}


		// edit block
	public function editblock()
	{
		// get user information
		$data['user'] = $this->Auth->getUserByEmail($this->session->userdata('email'));

		$getid = $_GET['id'];
		$data['block'] = $this->Block_model->getBlock($getid);
		$data['title'] = 'block Management';

		$this->form_validation->set_rules('block', 'block', 'required|trim|alpha_numeric_spaces', [
			'alpha_numeric_spaces' => 'block name must contains alpha numeric only!'
		]);
		if ($this->form_validation->run() == FALSE) {
			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('block/index', $data);
			$this->load->view('templates/footer');
		}else{
			$this->Block_model->editblock($this->input->post());
		}
	}
	
	public function subblock()
	{
		// get user information
		$data['user'] = $this->Auth->getUserByEmail( $this->session->userdata('email') );
		
		// get block
		$getid = $_GET['id'];
		$data['block'] = $this->Block_model->getBlock($getid);
		
		// get subblock
		$data['subblock'] = $this->Block_model->getSubblock();
		
		// form validation
		$this->form_validation->set_rules('title', 'Title', 'required|trim|alpha_numeric_spaces', [
			'alpha_numeric_spaces' => 'block name must contains alpha numeric only!'
		]);
		$this->form_validation->set_rules('block_id', 'block', 'required|trim');
		$this->form_validation->set_rules('url', 'Url', 'required|trim');
		$this->form_validation->set_rules('icon', 'Icon', 'required|trim');

		if ($this->form_validation->run() == FALSE){
			$data['title'] = 'Subblock Management';
			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('block/subblock', $data);
			$this->load->view('templates/footer');
		}else{
			$data = [
				'title' => $this->input->post('title'),
				'block_id' => $this->input->post('block_id'),
				'url' => $this->input->post('url'),
				'icon' => $this->input->post('icon'),
				'is_active' => $this->input->post('is_active')
			];

			// send subblock data to model
			$this->Block_model->addSubblock($data);
		}
	}

	
	
		public function editSubblock()
	{
		// get user information
		$data['user'] = $this->Auth->getUserByEmail($this->session->userdata('email'));

		// get block
		$getid = $_GET['id'];
		$data['block'] = $this->Block_model->getBlock($getid);

		// get subblock
		$data['subblock'] = $this->Block_model->getSubblock();

		// form validation
		$this->form_validation->set_rules('title', 'Title', 'required|trim|alpha_numeric_spaces', [
			'alpha_numeric_spaces' => 'Subblock name must contains alpha numeric only!'
		]);
		$this->form_validation->set_rules('block_id', 'block', 'required|trim');
		$this->form_validation->set_rules('url', 'Url', 'required|trim|alpha_numeric');
		$this->form_validation->set_rules('icon', 'Icon', 'required|trim');

		if ($this->form_validation->run() == FALSE) {
			$data['title'] = 'Subblock Management';
			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('block/subblock', $data);
			$this->load->view('templates/footer');
		} else {
			$data = [
				'id' => $this->input->post('id'),
				'title' => $this->input->post('title'),
				'block_id' => $this->input->post('block_id'),
				'url' => $this->input->post('url'),
				'icon' => $this->input->post('icon'),
				'is_active' => $this->input->post('is_active')
			];

			// send subblock data to model
			$this->Block_model->editSubblock($data);
		}
	}

	// this function can delete from various table
	public function delete($type = null, $id = null)
	{
		if (is_null($id) || is_null($type))
		{
			redirect('block');
		}
		switch ($type) :
			case 'block':
				$this->Block_model->deleteblock($id);
				break;

			case 'subblock':
				$this->Block_model->deleteSubblock($id);				
				break;
		endswitch;
	}

	public function getblockEdit()
	{
		$id = $this->input->post('id');
		echo json_encode($this->Block_model->getblockById($id));
	}

	public function getSubblockEdit()
	{
		$id = $this->input->post('id');
		echo json_encode($this->Block_model->getSubblockById($id));
	}
}