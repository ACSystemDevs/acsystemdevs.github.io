<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class Admin_login extends CI_Controller {
		function __construct() {
			date_default_timezone_set('Asia/Manila');
			parent::__construct();
			$this->load->model('Login_model','lm');
		}

		public function index() {
			$this->load->view('admin_login');
		}

		public function login_action() {
			// gather all data to be posted before executing
			// put it in an array variable
			$log_cred = array(
				'user' => $this->input->post('user'),
				'pass' => $this->input->post('pass')
			);

			// go to Model (Login_model->login_val)..
			// returned results will be placed in one variable.
			$data = $this->lm->login_val($log_cred['user'],$log_cred['pass']);

			// lm will return a value, use it for your validations here.
			if ($data) {
				$this->session->set_userdata('adminID', $data['adminID']);
				redirect(base_url('admin/dashboard'));
			} else {
				redirect(base_url('home'));
			}
		}
	}
?>