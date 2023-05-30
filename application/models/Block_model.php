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
		WHERE `project`.`sub_menuid` = $getid ORDER by project.id DESC
		";

		return $this->db->query($query)->result_array();
	}

	// get all Transaction
	public function getTransaction()
	{
		$role_id = $this->session->userdata('token');
		$query = "SELECT * FROM `transaction` JOIN `user_token` ON `user_token`.`token` = `transaction`.`to_address` 
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
				$tf = $data['value'];
				$saldo = $queryme[0]['value'] - $data['value'];
				if ( $saldoawal > $tf ){
					$sld = [
						'address' => $data['address'],
						'value' => $saldo,
						'timedate' =>  date('Y-m-d H:i:s')
		
					];	
					$this->db->where('address', $data['address']);
					$this->db->update('saldo', $sld);
			
					message('Send Payment Success!', 'Success', 'block/transaction');
	
				} else {
					message('Saldo Tidak Cukup!', 'danger', 'block/transaction');
				}
		
		
			} elseif ($queryto){ //menambah saldo to
				$saldo = $queryto['value'] + $data['value'];

				$sld = [
					'address' => $data['address'],
					'value' => $saldo,
					'timedate' =>  date('Y-m-d H:i:s')

				];

				$this->db->where('address', $data['to_address']);
				$this->db->update('saldo', $sld);
		
				message('Send Payment Success!', 'success', 'block/transaction');

			} elseif ($queryto == 0){

			}
			 else { //add saldo
				$sld = [
					'address' => $data['address'],
					'value' => $data['value'],
					'date_create' =>  date('Y-m-d H:i:s')
				];

				$this->db->insert('saldo', $sld);
				message('Send Payment Success!', 'success', 'block/transaction');
			}
			$this->db->insert('transaction', $data);

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
            }else{
                message($this->upload->display_errors(), 'danger', 'block/validation');
            }
        }

        
		$this->db->insert('project', $data);
		message('New project added!','success','block/validation');
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