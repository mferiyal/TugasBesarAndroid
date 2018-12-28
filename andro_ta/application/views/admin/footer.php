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
                        "data":"longitude",
                    },
                    {
                        "targets":3,
                        "data":"latitude",
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
    </script>

</body>
</html>