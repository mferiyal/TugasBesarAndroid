<?php

    defined('BASEPATH') OR exit('No direct script access allowed');

    class Admin extends CI_Controller {

        public function __construct()
        {
            parent::__construct();
            $this->load->helper('url','form');
            $this->load->library('form_validation');
            $this->load->database();
        }

        public function index()
        {
            $query = $this->db->query('select * from tbl_kategori')->result();

            $data['kategori'] = $query;
            $this->load->view('admin/index',$data);
        }

        public function update(){
        $this->load->helper('url','form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('judul','Judul','trim|required');
        
        $this->load->model('post_model');
        $isi['review']=$this->post_model->getReview($id);
        
        if($this->form_validation->run() == FALSE) {
            $this->load->view('user/updatereview',$isi);
        } else {
                //$data = array('upload_data' => $this->upload->data());
                $this->post_model->updateReview($id);
                $this->load->view('user/review_sukses');
            }
        }

        public function data_server()
        {
            $this->load->library('Datatables');
            $this->datatables
                    ->select('nama_wisata , alamat, deskripsi, longitude, latitude, image')
                    ->from('tbl_wisata');
                    echo $this->datatables->generate();
        }

        public function tambahWisata(){
            $data = array(
                'nama_wisata'       => $this->input->post('nama_wisata'),
                'id_kategori'       => $this->input->post('id_kategori'),
                'alamat'            => $this->input->post('alamat'),
                'deskripsi'         => $this->input->post('deskripsi'),
                'longitude'         => $this->input->post('longitude'),
                'latitude'          => $this->input->post('latitude'));

                //$get_wisata = $this->db->query("SELECT * FROM wisata WHERE nama_wisata = '".$data['nama_wisata']."' ")->result();


                if(!empty($_FILES)){
                    $config['upload_path']   = './assets/image';
                    $config['allowed_types'] = 'gif|jpg|png|jpeg';
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
                    redirect('admin','refresh');
                }
        }



    }

    /* End of file Admin.php */



?>