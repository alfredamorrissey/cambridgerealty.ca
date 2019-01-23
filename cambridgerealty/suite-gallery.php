<?php
session_start();

    if (!$_SESSION["access"])
    {
    	header('Location: 2-availability.php');
    }
      require_once 'dbconfigs.inc.php';
      require_once 'common.inc.php';
      define("IN_AVAILABILITY", 1);
      include("templates/header.inc.php");
      $suite_id = $_REQUEST["suite_id"];
      if ($suite_id != null && $suite_id != "")
      {
      	$bnSuite = new beanSuite($conn);
      	$bnSuite->__set("suite_id", $suite_id);
      	$bnSuite->__doLoad();
      	if (!$bnSuite->__get("exists")) {
      		header('Location: 2-availability.php');
      	}
      	$available = new beanAvailable('Available', array("suite_id"), $conn);
      	$available->__set("suite_id", $suite_id);
      	$available->__doLoad();

        $layout = new beanSuiteLayout($conn);
      	$layout->__set("layout_id", $bnSuite->__get("layout_id"));
      	$layout->__doLoad();
        $googleMap = new classGoogleMap();

      	if (!$available->__get("exists") && !$_SESSION["access"]) {
      		header('Location: 2-availability.php');
      	}
      	//var_dump($available);
      	//var_dump($house);

      	$gallery = new classGalleryPhotos($conn);
        $gallery->setGallery($layout->__get("gallery_id"));
      }

      if ($gallery != null)
      {
      	$_SESSION["logger"]->info("-->num_photos: " . $gallery->__get("num_photos"));
      }
      else
      {
      	$_SESSION["logger"]->info("-->there is no gallery for this page, or it did not load correctly");
      }
      ?>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <main class="page-content">
      <section class="well-xl">
          <div class="container">
              <div class="row row-60">


                  <div class="col-lg-6">
                    <h2 class="line-3"><?php echo "Suite " . $bnSuite->__get("suite_id")  ?></h2>
                    <div class="row row-30">
                        <div class="col-lg-12">

                        <p class="text-default-3">
                          <?php echo nl2br($bnSuite->__get("description")) ?>
                        </p>
                      </div>
                  </div>

                  </div>
                  <div class="col-lg-6">
                    <div class="row row-30">
                      <div class="col-lg-12">
                      <img  alt="Cambridge Realty Senator Apartments floor plan room <?php echo $suite_id ?>"
                            src="<?php echo $layout->__get('floorplan') ?>"
                            width="370px" />
                            </div>
                    </div>
                    <div class="row row-30">
                      <?php echo $googleMap->embedMap(); ?>
                    </div>


                  </div>
              </div>
          </div>
          <?php
          include("templates/owl-gallery.inc.php");
          ?>
      </section>

    </main>
    <?php
    include("templates/footer.inc.php");
    ?>
</div>
<div class="snackbars" id="form-output-global"></div>
<!-- Core Scripts -->
<script src="js/core.min.js"></script>
<!-- Additional Functionality Scripts -->
<script src="js/script.js"></script>
</body>
</html>
