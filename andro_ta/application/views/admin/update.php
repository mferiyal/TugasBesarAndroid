<?php $this->load->view('admin/header');?>
	 <div class="container">
  	<div class="panel panel-default">
    	<div class="panel-heading">Tambah Review</div>
    		<div class="panel-body">

	    		<?php echo form_open_multipart('admin/updatereview/'.$this->uri->segment(3)); ?>
	    		<?php echo validation_errors(); ?>
				
				
				<div class="form-group">
					<label for="" >Judul : </label>
					<input type="text" name="judul" class="form-control" id="judul" placeholder="Judul" value="<?php echo $review[0]->judul ?>">
				</div>

				<!-- <div class="form-group">
					<label for="" >Post : </label>
					<input type="text" name="post" class="form-control" id="post" placeholder="field">
				</div> -->
				<div class="form-group">
					<label for="">Post : </label>
				<textarea name="post" id="editor">
                    <?php echo $review[0]->post ?>
				</textarea>
				</div>

				<!-- <div class="form-group">
					<label for="" >Foto : </label>
					<input type="file" name="userfile" size="20" class="form-control" value="">
				</div>-->				

				<button type="submit" class="btn btn-primary">Submit</button>
				<?php echo form_close(); ?>
				
			</div>
    	</div>
  	</div>
</div>
<?php $this->load->view('admin/footer');?>