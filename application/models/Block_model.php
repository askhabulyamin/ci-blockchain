<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Block_model extends CI_Model{
    private $block;
    public function __construct()
    {
        parent::__construct();

        $this->block = $this->db->get_where('project')->row_array();
    }

	// project SECTION

	// get all project
	public function getBlock($getid)
	{
		$role_id = $this->session->userdata('role_id');
		$query = "SELECT * FROM `project` JOIN `user_role` ON `user_role`.`id` = `project`.`role` 
		WHERE `project`.`sub_menuid` = $getid 
		";

		return $this->db->query($query)->result_array();
	}

	// get all Transaction
	public function getTransaction($token)
	{
		$role_id = $this->session->userdata('token');
		$query = "SELECT * FROM `transaction` JOIN `user_token` ON `user_token`.`token` = `transaction`.`to_address` 
		WHERE `transaction`.`to_address` = '$token' OR `transaction`.`address` = '$token'
		ORDER by transaction.id DESC
		";

		return $this->db->query($query)->result_array();
	}

		// get all Transaction
	public function getToken($token)
	{
		$query = "SELECT * FROM `user_token` WHERE token= '$token' 
		";

		return $this->db->query($query)->result_array();
	}

	// get saldo
	public function getSaldo($token)
	{
		$query = "SELECT * FROM `saldo` WHERE address = '$token' 
		";

		return $this->db->query($query)->result_array();
	}
	

	// add subproject
	public function addTransaction($data)
	{
		$address = $data['address'];
		$addressto = $data['to_address'];

		$querym = "SELECT * FROM `saldo` WHERE `address` = '$address'";
		$queryme = $this->db->query($querym)->result_array();
		$queryt = "SELECT * FROM `saldo` WHERE `address` = '$addressto'";
		$queryto = $this->db->query($queryt)->result_array();

		// var_dump($data);
		if($addressto != $address){
			if ($queryme){ //menguragi saldo me
				$saldoawal = $queryme[0]['value'];
				$saldoawalto = $queryto[0]['value'];

				$tf = $data['value'];
				$saldo = $saldoawal - $data['value'];

				// saldo to address
				$saldoplus = $saldoawalto + $data['value'];

				if ( $saldoawal > $tf ){
					$sld = [
						'address' => $address,
						'value' => $saldo,
						'timedate' =>  date('Y-m-d H:i:s')
		
					];	

					$addsldto = [
						'address' => $addressto,
						'value' => $tf,
						'timedate' =>  date('Y-m-d H:i:s')
					];	

					$updatesldto = [
						'address' => $addressto,
						'value' => $saldoplus,
						'timedate' =>  date('Y-m-d H:i:s')
					];	


					$this->db->where('address', $address);
					$this->db->update('saldo', $sld);

					// cek addres to
					if ($queryto){ //jika ada data to address
						$this->db->where('address', $addressto);
						$this->db->update('saldo', $updatesldto);

					} else {
						$this->db->insert('saldo', $addsldto);
					}

					$this->db->insert('transaction', $data);
					message('Send Payment Success!', 'success', 'block/transaction');
	
				} else {
					message('Saldo Tidak Cukup!', 'danger', 'block/transaction');
				}
		
		
			} 
			// elseif ($queryto){ //menambah saldo to
			// 	$saldo = $queryto['value'] + $data['value'];

			// 	$sld = [
			// 		'address' => $data['address'],
			// 		'value' => $saldo,
			// 		'timedate' =>  date('Y-m-d H:i:s')

			// 	];

			// 	$this->db->where('address', $data['to_address']);
			// 	$this->db->update('saldo', $sld);
		
			// 	message('Send Payment Success!', 'success', 'block/transaction');

			// } elseif ($queryto == 0){

			// }
			else { //add saldo
				$sld = [
					'address' => $address,
					'value' => $tf,
					'date_create' =>  date('Y-m-d H:i:s')
				];

				$this->db->insert('saldo', $sld);
				message('Send Payment Success!', 'success', 'block/transaction');
			}

		} else {
			message('Smart Contract tidak boleh sama!', 'danger', 'block/transaction');

		}
	}

	// get last project
    public function getLastTransaction()
	{
        $query = "SELECT * FROM `transaction` ORDER by id DESC LIMIT 1
               ";
		return $this->db->query($query)->result_array();
	}

	// get last project
    public function getLastBlock()
	{
        $query = "SELECT * FROM `project` ORDER by id DESC LIMIT 1
               ";
		return $this->db->query($query)->result_array();
	}


	// add new project
	public function addProject($data)
	{
        // if user upload file
        if ($data['file']){
            // configuration
            $config['allowed_types']        = 'gif|jpg|jpeg|png|iso|dmg|zip|rar|doc|docx|xls|xlsx|ppt|pptx|csv|ods|odt|odp|pdf|rtf|sxc|sxi|txt|exe|avi|mpeg|mp3|mp4|3gp';
            $config['upload_path']          = './uploads/';
            $config['max_size']             = 100000;
			// $new_name = time().$_FILES["file"]['name'];
			$config['file_name'] = $data['file'];

            $this->load->library('upload');
            $this->upload->initialize($config);
            
            if ($this->upload->do_upload('file')){
                
                // $old_file = $this->block['file'];
                // // hapus gambar sebelumnya kecuali gambar default
                // if ($old_file != 'default.jpg'){
                //     // var_dump( FCPATH . 'uploads/' . $old_file);die;
                //     unlink(FCPATH . 'uploads' . $old_file);
                // }

                $this->db->set('file', $data['file']);
            } else{
                message($this->upload->display_errors(), 'danger', 'block/validation?id='.$data['sub_menuid']);
            }
        }
        
		$this->db->insert('project', $data);
		message('New project added!','success','block?id='.$data['sub_menuid']);
	}

	// delete project by id
	public function deleteproject($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('project');
		message('project has been deleted!', 'success', 'project');
	}

	// edit project
	public function editproject($data)
	{
		$this->db->where('id', $data['id']);
		$this->db->update('project', $data);

		message('project has been edited!', 'success', 'project');
	}

	// SUBproject SECTION 

	// get subproject
	public function getSubproject()
	{
		$query = "SELECT `user_sub_project`.*, `project`.`project`
				  FROM `user_sub_project` JOIN `project`
				  ON `user_sub_project`.`project_id` = `project`.`id`
		";

		return $this->db->query($query)->result_array();
	}

	// get subproject by id
	public function getSubprojectById($id)
	{
		return $this->db->get_where('user_sub_project', ['id' => $id])->row_array();
	}

	// add subproject
	public function addSubproject($data)
	{
		$this->db->insert('user_sub_project', $data);
		message('New Subproject has been added!', 'success', 'project/subproject');
	}

	// delete subproject
	public function deleteSubproject($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('user_sub_project');

		message('Subproject has been deleted!', 'success', 'project/subproject');
	}

	// edit subproject
	public function editSubproject($data)
	{
		$this->db->where('id', $data['id']);
		$this->db->update('user_sub_project', $data);

		message('Subproject has been edited!', 'success', 'project/subproject');
	}
}	