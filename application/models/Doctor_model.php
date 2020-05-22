<?php
	defined('BASEPATH') or exit('No direct script access allowed');

	class Doctor_model extends CI_Model {
		public function __construct() {
			parent::__construct();
        	$this->load->database();
		}

		public function get_all_doc() {
			$this->db->select('doc.*, spe.specialtyName, cli.clinicName, are.areaName, admin.adminID, med.mediaDir');
			$this->db->from('doctor doc');
			$this->db->join('specialty spe','spe.specialtyID = doc.specialtyID','left');
			$this->db->join('clinic cli','doc.clinicID = cli.clinicID','left');
			$this->db->join('area are','doc.areaID = are.areaID','left');
			$this->db->join('medias med','doc.mediaID = med.mediaID','left');
			$this->db->join('admin_login admin','doc.adminID = admin.adminID','left');
			$query = $this->db->get();
	    	return $query->result();
		}
	}
?>