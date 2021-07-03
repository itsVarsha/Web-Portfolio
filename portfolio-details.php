<?php
require('include/db.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Portfolio Details - Varsha Sharma</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  
</head>

<body>

  <main id="main">

    <!-- ======= Portfolio Details ======= -->
    <div id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row">

          <div class="col-lg-8">
            <?php
              $query= "SELECT * from portfolio";
              $run = mysqli_query($db,$query);
              // $personalInfo = mysqli_fetch_array($runN);
              $i = 1;
              while ($portfolio = mysqli_fetch_array($run)) {
              ?>
			  
            <h2 class="portfolio-title"><?= $portfolio['proj_title'];?></h2>

            <div class="portfolio-details-slider swiper-container">
              <div class="swiper-wrapper align-items-center"> 

              <?php 
              if (!$portfolio['proj_image']=='') {
                ?>
                 <div class="swiper-slide">
                  <img src="assets/img/portfolio/<?= $portfolio['proj_image'];?>" alt="">
                </div>
                <?php
              }
              ?>
               <?php 
              if (!$portfolio['proj_image2']=='') {
                ?>
                 <div class="swiper-slide">
                  <img src="assets/img/portfolio/<?= $portfolio['proj_image2'];?>" alt="">
                </div>
                <?php
              }
              ?>
              <?php 
              if (!$portfolio['proj_image3']=='') {
                ?>
                 <div class="swiper-slide">
                  <img src="assets/img/portfolio/<?= $portfolio['proj_image3'];?>" alt="">
                </div>
                <?php
              }
              ?>


                

              </div>
              <div class="swiper-pagination"></div>
            </div>
			
            <?php
              }
              ?>
			  </div>

          
            <?php
              $query= "SELECT * from portfolio";
              $run = mysqli_query($db,$query);
              // $personalInfo = mysqli_fetch_array($runN);
              $i = 1;
              while ($portfolio = mysqli_fetch_array($run)) {
              ?>
			  <div class="col-lg-4 portfolio-info">
            <h3>Project information</h3>
            <ul>
              <li><strong>Category</strong>: <?= $portfolio['category'];?></li>
              <li><strong>Client</strong>: <?= $portfolio['client'];?></li>
              <!-- <li><strong>Project date</strong>: 01 March, 2020</li> -->
              <li><strong>Project URL</strong>: <a href="<?= $portfolio['projecturl'];?>"><?= $portfolio['projecturl'];?></a></li>
            </ul>

            <p><?= $portfolio['proj_desc'];?></p>
			</div>
            <?php
              }
              ?>
          

        </div>

      </div>
    </div><!-- End Portfolio Details -->

  </main><!-- End #main -->

  <div class="credits">
        Designed and Developed by <a target="_blank" href="http://varsha.adsap.in/">Varsha Sharma</a>
  
  </div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>