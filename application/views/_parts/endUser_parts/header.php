<!DOCTYPE html>
<html lang="en">
<head>
	<title>Bethany Hospital Inc.</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="icon" href="<?php echo base_url();?>bhicon.ico" type="image/x-icon">
	<link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

	<link rel="stylesheet" href="<?php echo base_url();?>template/css/open-iconic-bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>template/css/animate.css">

	<link rel="stylesheet" href="<?php echo base_url();?>template/css/owl.carousel.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>template/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>template/css/magnific-popup.css">

	<link rel="stylesheet" href="<?php echo base_url();?>template/css/aos.css">

	<link rel="stylesheet" href="<?php echo base_url();?>template/css/ionicons.min.css">

	<link rel="stylesheet" href="<?php echo base_url();?>template/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="<?php echo base_url();?>template/css/jquery.timepicker.css">

	<link rel="stylesheet" href="<?php echo base_url();?>template/fonts/fontawesome/css/font- awesome.min.css">
	<link rel="stylesheet" href="<?php echo base_url();?>template/css/flaticon.css">
	<link rel="stylesheet" href="<?php echo base_url();?>template/css/icomoon.css">
	<link rel="stylesheet" href="<?php echo base_url();?>template/css/style.css">

	
</head>
<body>
	<!-- <div class="" style="position: fixed; top: 0; z-index: 100000;"> -->
		<nav class="navbar py-4 navbar-expand-lg ftco_navbar navbar-light bg-light flex-row">
			<div class="container">
				<div class="row no-gutters d-flex align-items-start align-items-center px-3 px-md-0">
					<div class="col-lg-3 pr-4 align-items-center">
						<a class="navbar-brand" href="home">Bethany<span class="text-success">Hospital</span>Inc.</a>
					</div>
					<div class="col-lg-9 d-none d-md-block">
						<div class="row d-flex">
							<div class="col-md-4 pr-4 d-flex topper align-items-center">
								<div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-map text-success"></span></div>
								<span class="text">Address: Widdoes Street, Brgy. II, City of San Fernando, La Union</span>
							</div>
							<div class="col-md pr-4 d-flex topper align-items-center">
								<div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane text-success"></span></div>
								<span class="text">Email: bethanyhospitalinc@gmail.com</span>
							</div>
							<div class="col-md pr-4 d-flex topper align-items-center">
								<div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2 text-success"></span></div>
								<span class="text">Phone: (072) 242 - 0804</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</nav>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
			<div class="container d-flex align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="oi oi-menu"></span> Menu
				</button>
				<p class="button-custom order-lg-last mb-0">
					<a href="contact" class="btn btn-success py-2 px-3">
						<span id="contact-text">Contact Us for your Inquiries</span>
						<span id="mobile-contact-icon" class="icon-phone2"></span>
					</a>
				</p>
				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item  <?php if($this->uri->segment(1)=="home"){echo "active";}?>"><a href="home" class="nav-link pl-0">Home</a></li>
						<li class="nav-item  <?php if($this->uri->segment(1)=="about"){echo "active";}?>"><a href="about" class="nav-link">About</a></li>
						<li class="nav-item  <?php if($this->uri->segment(1)=="patients-and-guests"){echo "active";}?>"><a href="patients-and-guests" class="nav-link">Patient & Guests</a></li>
						<li class="nav-item  <?php if($this->uri->segment(1)=="whats-new"){echo "active";}?>"><a href="whats-new" class="nav-link">What's New?</a></li>
						<li class="nav-item  <?php if($this->uri->segment(1)=="services"){echo "active";}?>"><a href="services" class="nav-link">Services</a></li>
						<li class="nav-item  <?php if($this->uri->segment(1)=="doctors"){echo "active";}?>"><a href="doctors" class="nav-link">Doctors</a></li>
						<li class="nav-item  <?php if($this->uri->segment(1)=="careers"){echo "active";}?>"><a href="careers" class="nav-link">Careers</a></li>
						<li class="nav-item  <?php if($this->uri->segment(1)=="tour"){echo "active";}?>"><a href="tour" class="nav-link">Tour</a></li>
					</ul>
				</div>
			</div>
		</nav>
	<!-- </div> -->