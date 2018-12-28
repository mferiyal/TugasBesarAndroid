<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    require APPPATH . '/libraries/REST_Controller.php';
    use Restserver\Libraries\REST_Controller;


    class Jadwal extends REST_Controller {
    	function __construct($config = 'rest') {
            parent::__construct($config);
            $this->load->database();
            $this->load->helper(array('form', 'url'));

        }

        public function index_get()
        {
         	$this->db->select('j.id_jadwal, m.id as id_matkul, m.nama_mk, j.hari, j.jam_mulai, j.jam_selesai');
         	$this->db->from('jadwal j');
         	$this->db->join('mata_kuliah m','j.id_matkul = m.id');   
            $query = $this->db->get()->result();
            $this->response(array('status' => 'sukses','result'=>$query, 200));
        }



    }



    /* End of file Wisata.php */

?>