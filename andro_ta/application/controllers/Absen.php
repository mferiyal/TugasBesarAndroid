<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    require APPPATH . '/libraries/REST_Controller.php';
    use Restserver\Libraries\REST_Controller;


    class Absen extends REST_Controller {
    	function __construct($config = 'rest') {
            parent::__construct($config);
            $this->load->database();
            $this->load->helper(array('form', 'url'));

        }

        public function index_get()
        {
            $this->db->distinct();
         	$this->db->select('a.id_mhs, m.nama, m.absen, a.ket, t.nama_mk');
         	$this->db->from('absen a');
         	$this->db->join('mhs m','a.id_mhs = m.nim');
            $this->db->join('mata_kuliah t','a.id_matkul = t.id');
            $query = $this->db->get()->result();
            $this->response(array('status' => 'sukses','result'=>$query, 200));
        }

        public function absen_post()
        {
            $this->db->distinct();
            $this->db->select('a.id_mhs, m.nama, m.absen, a.ket, t.nama_mk');
            $this->db->from('absen a');
            $this->db->join('mhs m','a.id_mhs = m.nim');
            $this->db->join('mata_kuliah t','a.id_matkul = t.id');
            $this->db->where('a.id_matkul',$this->post('id_matkul'));
            $query = $this->db->get()->result();
            $this->response(array('status' => 'sukses','result'=>$query, 200));
        }

        public function index_post()
        {
            $data = array(
                'id_mhs'    => $this->post('id_mhs'),
                'id_matkul' => $this->post('id_matkul'),
                'ket'       => 'Hadir'
            );

            $get_user = $this->db->query("SELECT * FROM absen WHERE id_mhs ='".$data['id_mhs']."' AND id_matkul ='".$data['id_matkul']."' ")->result();

            $msg = "";
            $status = "";
            if(empty($get_user)){
                $insert = $this->db->insert('absen',$data);
                

                if ($insert) {
                    $status = "sukses";
                    $msg = "Berhasil";
                } else {
                    $status = "gagal";
                    $msg = "Gagal";
                }



            }else {
                $status = "gagal";
                $msg = "Anda sudah Absen";
            }

            $this->response(array('status' => $status, 'result' => $data, 'message' => $msg));



        }



    }



    /* End of file Wisata.php */

?>