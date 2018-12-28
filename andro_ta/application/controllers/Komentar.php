<?php

    defined('BASEPATH') OR exit('No direct script access allowed');

    require APPPATH . '/libraries/REST_Controller.php';
    use Restserver\Libraries\REST_Controller;

    class Komentar extends REST_Controller {

        function __construct($config = 'rest') {
            parent::__construct($config);
            $this->load->database();
        }

        public function komentar_post()
        {
            $this->db->select('k.id_komentar, k.id_user, u.nama, k.id_wisata, k.komentar, k.tanggal');
            $this->db->from('tbl_komentar as k');
            $this->db->join('tbl_user as u', 'k.id_user = u.id_user');
            $this->db->where('id_wisata',$this->input->post('id_wisata'));
            $query = $this->db->get()->result();
            $this->response(array('status' => 'sukses','result'=>$query, 200));
        }

        public function insert_post()
        {
            $data = array(
                'id_user'           => $this->post('id_user'),
                'id_wisata'         => $this->post('id_wisata'),
                'komentar'          => $this->post('komentar'),
                'tanggal'           => $this->post('tanggal'));
            $insert = $this->db->insert('tbl_komentar', $data);
            if ($insert) {
                $this->response(array('status' => 'sukses', 'result' => $data));
            } else {
                $this->response(array('status' => 'fail', 502));
        }



        }

    }

    /* End of file Komentar.php */

?>