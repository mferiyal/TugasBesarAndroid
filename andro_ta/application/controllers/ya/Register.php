<?php

    defined('BASEPATH') OR exit('No direct script access allowed');

    require APPPATH . '/libraries/REST_Controller.php';
    use Restserver\Libraries\REST_Controller;

    class Register extends REST_Controller {

        function __construct($config = 'rest') {
            parent::__construct($config);
            $this->load->database();
        }

        public function index_post()
        {
            $data = array(
                'username'          => $this->post('username'),
                'password'          => $this->post('password'),
                'nama'              => $this->post('nama'),
                'tanggal_lahir'     => $this->post('tanggal_lahir'),
                'status'            => 'user');
            
            $get_user = $this->db->query("SELECT * FROM tbl_user WHERE username ='".$data['username']."' ")->result();
            
            $msg = "";
            if(empty($get_user)){
                
                $insert = $this->db->insert('tbl_user', $data);
                $msg="Berhasil Mendaftar";

                if ($insert) {
                    $this->response(array('status' => 'sukses', 'result' => $data, 'message' => $msg));
                } else {
                    $msg = "Gagal Mendaftar";
                    $this->response(array('status' => 'gagal', 'message' => $msg ));
                }

            }else{
                $msg="Username sudah ada";
                $this->response(array('status' => 'gagal', 'result' => $data, 'message' => $msg));
            }
                
            
        }

        public function index_put()
        {
            $id_user = $this->put('id_user');
            $data = array(
                'username'          => $this->put('username'),
                'password'          => $this->put('password'),
                'nama'              => $this->put('nama'));
                $this->db->where('id_user', $id_user);
                $update = $this->db->update('tbl_user', $data);
                if ($update) {
                    $this->response(array('status' => 'sukses', 'result' => $data, 'message' => 'Data berhasil diubah'));
                } else {
                    $this->response(array('status' => 'gagal', 'result' => $data, 'message' => 'Data gagal diubah'));
                }
                
        }

    }

    /* End of file Register.php */

?>