<?php $this->load->view('admin/header');?>
	<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Wisata</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Data Wisata
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">

                        <a href="javascript:;" class="tambah_wisata">
                            <button type="button" class="btn btn-primary">
                                <i class="fa fa-plus fa-fw"></i> Tambah Wisata
                            </button>
                        </a>
                        <br><br>

                            <table width="100%" class="table table-striped table-bordered table-hover" id="example">
                                <thead>
                                    <tr>
                                        <th width="200">Nama Wisata</th>
                                        <th>Alamat</th>
                                        <!-- <th>Deskripsi</th> -->
                                        <th>Latitude</th>
                                        <th>Longitude</th>
                                        <th>Image</th>
                                        <th>Update</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  
                                </tbody>
                            </table>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>

    <!-- Modal Wisata -->
  <div class="modal fade" id="modalWisata" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Tambah Wisata</h4>
        </div>
        <div class="modal-body">
          <?=form_open_multipart('admin/tambahWisata')?>
            <input type="hidden" name="id">
            <label>Nama Wisata</label>
            <input type="text" name="nama_wisata" class="form-control placeholder-no-fix" required>
            <br>
            
            <div class="form-group">
              <label>Kategori</label>
                <select class="form-control" name="id_kategori">
                  <option>----Pilih Kategori----</option>
                  <?php foreach ($kategori as $key) { ?>
                  <option value="<?=$key->id_kategori?>">
                    <?=$key->kategori_wisata?>
                  </option>
                  <?php } ?>
                </select>
            </div>

            <label>Alamat</label>
            <input type="text" name="alamat" class="form-control placeholder-no-fix" required>
            <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>Latitude</label>
                        <input type="text" name="latitude" class="form-control placeholder-no-fix" required>
                    </div>
                    <div class="col-md-6">
                        <label>Longitude</label>
                        <input type="text" name="longitude" class="form-control placeholder-no-fix" required>
                    </div>
                </div>
            
                <hr>
            <label>Deskripsi</label>
            <textarea name="deskripsi" class="form-control" id="ckeditor1"></textarea>
            <hr>
            <label>Image</label>
            <input type="file" name="image" size="20" class="form-control" required>
                            
        </div>
        <div class="modal-footer">
            <button data-dismiss="modal" class="btn btn-info" type="button">Cancel</button>
            <button class="btn btn-success" type="submit">Submit</button>
        </div>
          </form>
      </div>
      
    </div>
  </div>





    <?php $this->load->view('admin/file_js');?>

     <script type="text/javascript">
        $(document).ready(function(){
            $('#example').DataTable({
                "processing":true,
                "serverSide":true,
                "lengthMenu":[[6,10,-1],[6,10,"All"]],
                "ajax":{
                    url : "<?php echo site_url('admin/data_server') ?>",
                    type : "POST"
                },
                "columnDefs":
                [

                    {
                        "targets":0,
                        "data":"nama_wisata",
                    },
                    {
                        "targets":1,
                        "data":"alamat",
                    },
                    {
                        "targets":2,
                        "data":"latitude",
                    },
                    {
                        "targets":3,
                        "data":"longitude",
                    },
                    {
                        "targets":4,
                        "data":"image",
                        "render":function(data,type,full,meta){
                            return '<img src="<?=base_url()?>assets/image/'+data+'" width="100">';
                        }
                    },
                    {
					"targets":5,
					"data":null,
					"searchable":false,
					"render":function(data,type,full,meta){
						return '<a class="btn btn-warning" href="<?=site_url()?>/wisata/updateReview/'+data["id"]+'">Edit</a>';
					    }
				    },
				    {
					"targets":6,
					"data":null,
					"searchable":false,
					"render":function(data,type,full,meta){
						return '<a class="btn btn-danger" href="<?=site_url()?>/post/deleteReview/'+data["id"]+'">Delete</a>';
					    }
				    },
                ]
            });
        });

        $(document).on("click",".tambah_wisata",function(){
        $('#modalWisata').modal('show');
         });

        $(function(){
            CKEDITOR.replace('ckeditor1');
        });

    </script>

</body>
</html>