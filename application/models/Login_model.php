<?php
    defined('BASEPATH') or exit('No direct script access allowed');

    class Login_model extends CI_Model {

    	public function __construct() {
            parent::__construct();
            $this->load->database();
        }

        // login validation from trylogin Controller function login.
        public function login_val($user, $pass) {
        	$this->db->select('*');
        	$this->db->from('admin_login al');
        	$this->db->where('al.username', $user);
        	$this->db->where('al.password', $pass);

        	if ($query = $this->db->get()) {
        		return $query->row_array();
        	} else {
        		return 0;
        	}
        }
    }
?>