<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class endUser extends CI_Controller {

		public function __construct(){
			date_default_timezone_set('Asia/Manila');
			parent::__construct();
			// $this->load->model('Account_management_model','amm');
			// $this->load->model('User_authentication_model','uam');
			// $this->load->model('Event_log_model','elm');
		}

		public function index() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/endUser_pages/home');
			$this->load->view('_parts/endUser_parts/footer');
		}

		public function About() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/endUser_pages/about');
			$this->load->view('_parts/endUser_parts/footer');
		}

		public function Patients_And_Guests() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/endUser_pages/patients-and-guests');
			$this->load->view('_parts/endUser_parts/footer');
		}

		public function Whats_New() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/endUser_pages/whats-new');
			$this->load->view('_parts/endUser_parts/footer');
		}

		public function Services() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/endUser_pages/services');
			$this->load->view('_parts/endUser_parts/footer');
		}

		public function Doctors() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/endUser_pages/doctor');
			$this->load->view('_parts/endUser_parts/footer');
		}

		public function Careers() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/endUser_pages/careers');
			$this->load->view('_parts/endUser_parts/footer');
		}

		public function Tour() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/endUser_pages/tour');
			$this->load->view('_parts/endUser_parts/footer');
		}

		public function Contact_Us() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/endUser_pages/contact');
			$this->load->view('_parts/endUser_parts/footer');
		}
		public function This_Event() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/endUser_pages/single-event');
			$this->load->view('_parts/endUser_parts/footer');
		}

		###################################
		##########  Trying Page  ##########
		###################################

		public function try() {
			// $this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/trying_page');
			// $this->load->view('_parts/endUser_parts/footer');
		}

		###################################
		########## Each Services ##########
		###################################

		public function Services_Single_24OPD() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/services/services-single-24OPD');
			$this->load->view('_parts/endUser_parts/footer');
		}

		public function Services_Single_24OR() {
			$this->load->view('_parts/endUser_parts/header');
			$this->load->view('_pages/services/services-single-24OR');
			$this->load->view('_parts/endUser_parts/footer');
		}

		###################################
		########## Each Services ##########
		###################################
	}
?>