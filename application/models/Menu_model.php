<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu_model extends CI_Model{

	// MENU SECTION

	// get all menu
	public function getMenu()
	{
		return $this->db->get('user_menu')->result_array();
	}

	// get all menu except admin column
	public function getMenuExceptAdmin()
	{
		$this->db->where('id !=',1);
		return $this->db->get('user_menu')->result_array();
	}
	
	

	// add new menu
	public function addMenu($data)
	{
		// if user upload file
        if ($data['icon']){
            // configuration
            $config['allowed_types']        = 'gif|jpg|png';
            $config['upload_path']          = './assets/img/';
            $config['max_size']             = 100000;

            $this->load->library('upload');
            $this->upload->initialize($config);
           
            if ($this->upload->do_upload('icon')){
                
                $old_image = $this->user['icon'];
                // hapus gambar sebelumnya kecuali gambar default
               if ($old_image != 'default.jpg'){
                    // var_dump( FCPATH . 'assets/img/profile/' . $old_image);die;
                    unlink(FCPATH . 'assets/img/' . $old_image);
               }

                $this->db->set('icon', $data['icon']);
            }else{
                message($this->upload->display_errors(), 'danger', 'menu');
            }
        }

		$this->db->insert('user_menu', $data);
		message('New menu added!','success','menu');
	}

	// delete menu by id
	public function deleteMenu($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('user_menu');
		message('Menu has been deleted!', 'success', 'menu');
	}

	// edit menu
	public function editMenu($data)
	{
		$this->db->where('id', $data['id']);
		$this->db->update('user_menu', $data);

		message('Menu has been edited!', 'success', 'menu');
	}

	// SUBMENU SECTION 

	// get submenu
	public function getSubMenu()
	{
		$query = "SELECT `user_sub_menu`.*, `user_menu`.`menu`
				  FROM `user_sub_menu` JOIN `user_menu`
				  ON `user_sub_menu`.`menu_id` = `user_menu`.`id`
		";

		return $this->db->query($query)->result_array();
	}
	
	// get menu by id
	public function getMenuById($id)
	{
		// print_r($id);die();
		return $this->db->get_where('user_menu', ['id', $id])->row_array();
	}

	// get submenu by id
	public function getSubMenuById($id)
	{
		return $this->db->get_where('user_sub_menu', ['id' => $id])->row_array();
	}

	// add submenu
	public function addSubMenu($data)
	{
		// if user upload file
        if ($data['icon_file']){
            // configuration
            $config['allowed_types']        = 'gif|jpg|png';
            $config['upload_path']          = './assets/img/';
            $config['max_size']             = 100000;

            $this->load->library('upload');
            $this->upload->initialize($config);
           
            if ($this->upload->do_upload('icon_file')){
                
                $old_image = $this->user['icon_file'];
                // hapus gambar sebelumnya kecuali gambar default
               if ($old_image != 'default.jpg'){
                    // var_dump( FCPATH . 'assets/img/profile/' . $old_image);die;
                    unlink(FCPATH . 'assets/img/' . $old_image);
               }

                $this->db->set('icon_file', $data['icon_file']);
            }else{
                message($this->upload->display_errors(), 'danger', 'menu');
            }
        }
		$this->db->insert('user_sub_menu', $data);
		message('New Submenu has been added!', 'success', 'menu/subMenu');
	}

	// delete submenu
	public function deleteSubmenu($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('user_sub_menu');

		message('Submenu has been deleted!', 'success', 'menu/subMenu');
	}

	// edit submenu
	public function editSubmenu($data)
	{
		// if user upload file
        if ($data['icon_file']){
            // configuration
            $config['allowed_types']        = 'gif|jpg|png';
            $config['upload_path']          = './assets/img/';
            $config['max_size']             = 100000;

            $this->load->library('upload');
            $this->upload->initialize($config);
           
            if ($this->upload->do_upload('icon_file')){
                
                $old_image = $this->user['icon_file'];
                // hapus gambar sebelumnya kecuali gambar default
               if ($old_image != 'default.jpg'){
                    // var_dump( FCPATH . 'assets/img/profile/' . $old_image);die;
                    unlink(FCPATH . 'assets/img/' . $old_image);
               }

                $this->db->set('icon_file', $data['icon_file']);
            }else{
                message($this->upload->display_errors(), 'danger', 'menu');
            }
        }
		$this->db->where('id', $data['id']);
		$this->db->update('user_sub_menu', $data);

		message('Submenu has been edited!', 'success', 'menu/subMenu');
	}
}	