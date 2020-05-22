<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class adminUser extends CI_Controller {

		public function __construct() {
			date_default_timezone_set('Asia/Manila');
			parent::__construct();
			// $this->load->model('Account_management_model','amm');
			// $this->load->model('User_authentication_model','uam');
			$this->load->model('Doctor_model','dm');
		}

		public function index() {
			$this->load->view('_parts/adminUser_parts/header');
			$this->load->view('_parts/adminUser_parts/topnav');
			$this->load->view('_parts/adminUser_parts/sidechat');
			$this->load->view('_parts/adminUser_parts/sidenav');
			$this->load->view('_pages/adminUser_pages/dashboard');
			$this->load->view('_parts/adminUser_parts/footer'); 
		}

		public function doctorsFunc() {
			$data['doctor'] = $this->dm->get_all_doc();
			// var_dump($data);
			$this->load->view('_parts/adminUser_parts/header');
			$this->load->view('_parts/adminUser_parts/topnav');
			$this->load->view('_parts/adminUser_parts/sidechat');
			$this->load->view('_parts/adminUser_parts/sidenav');
			$this->load->view('_pages/adminUser_pages/doctors', $data);
			$this->load->view('_parts/adminUser_parts/footer'); 
		}

		public function servicesFunc() {
			$this->load->view('_parts/adminUser_parts/header');
			$this->load->view('_parts/adminUser_parts/topnav');
			$this->load->view('_parts/adminUser_parts/sidechat');
			$this->load->view('_parts/adminUser_parts/sidenav');
			$this->load->view('_pages/adminUser_pages/services');
			$this->load->view('_parts/adminUser_parts/footer'); 
		}

		public function packagesFunc() {
			$this->load->view('_parts/adminUser_parts/header');
			$this->load->view('_parts/adminUser_parts/topnav');
			$this->load->view('_parts/adminUser_parts/sidechat');
			$this->load->view('_parts/adminUser_parts/sidenav');
			$this->load->view('_pages/adminUser_pages/packages');
			$this->load->view('_parts/adminUser_parts/footer'); 
		}
	}
?>