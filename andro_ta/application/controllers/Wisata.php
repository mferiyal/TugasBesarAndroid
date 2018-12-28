<?php
    defined('BASEPATH') OR exit('No direct script access allowed');

    require APPPATH . '/libraries/REST_Controller.php';
    use Restserver\Libraries\REST_Controller;

    class Wisata extends REST_Controller {

        function __construct($config = 'rest') {
            parent::__construct($config);
            $this->load->database();
            $this->load->helper(array('form', 'url'));

        }

        public function index_get()
        {
            $this->db->select('*');
            $this->db->order_by('nama_wisata', 'asc');
            $this->db->from('tbl_wisata');
            $query = $this->db->get()->result();
            $this->response(array('status' => 'sukses','result'=>$query, 200));
        }

        public function index_post()
        {
            $data = array(
                'nama_wisata'       => $this->post('nama_wisata'),
                'id_kategori'       => $this->post('id_kategori'),
                'alamat'            => $this->post('alamat'),
                'deskripsi'         => $this->post('deskripsi'),
                'longitude'         => $this->post('longitude'),
                'latitude'          => $this->post('latitude'));

                //$get_wisata = $this->db->query("SELECT * FROM wisata WHERE nama_wisata = '".$data['nama_wisata']."' ")->result();


                if(!empty($_FILES)){
                    $config['upload_path']   = './assets/image';
                    $config['allowed_types'] = 'gif|jpg|png';
                    $config['max_size']      = 80000;
                    $config['max_width']     = 4400;
                    $config['max_height']    = 3320;
                    $this->load->library('upload',$config);
                    if($this->upload->do_upload('image')){
                        //$upload_data = $this->upload->data('file_name');


                        $data['image'] = $this->upload->data('file_name');
                        $insert_image = "upload image success";
                    }else{
                        $insert_image = "upload image gagal";
                    }

                }else{
                    $data['image'] = "";
                }



                $insert = $this->db->insert('tbl_wisata', $data);
                if ($insert) {
                    $this->response($data, 200);
                } else {
                    $this->response(array('status' => 'fail', 502));
            }
        }

        public function kategori_post()
        {
            $kategori = $this->input->post('id_kategori');
            $this->db->select('w.id_wisata, w.nama_wisata, w.id_kategori ,w.alamat, w.deskripsi, w.longitude ,w.latitude ,w.image');
            $this->db->from('tbl_wisata as w');
            $this->db->join('tbl_kategori as k', 'w.id_kategori = k.id_kategori');
            $this->db->where('w.id_kategori',$kategori);
            $query = $this->db->get()->result();
            $this->response(array('status' => 'sukses','result'=>$query, 200));
        }


    }

    /* End of file Wisata.php */

?>