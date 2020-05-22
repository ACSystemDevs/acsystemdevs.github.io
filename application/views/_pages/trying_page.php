<div class="container">
	<div class="row">
		<div class="col-sm-4">
			<form class="form form-horizontal" role="form" method="POST" action="<?php echo base_url('trylog');?>">
				<div class="form-group">
					<label class="control-label col-sm-4">Username</label>
					<div class="col-sm-8">
						<input type="text" name="user" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-4">Password</label>
					<div class="col-sm-8">
						<input type="password" name="pass" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<!-- <label class="control-label col-sm-4">Username</label> -->
					<div class="col-sm-8">
						<button class="btn btn-primary" name="btn-submit">
							Submit
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>