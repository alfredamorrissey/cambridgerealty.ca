<?php
session_start();


      require_once 'dbconfigs.inc.php';
      require_once 'common.inc.php';
      define("IN_AVAILABILITY", 1);
      include("templates/header.inc.php");
      $house_id = $_REQUEST["house_id"];
      if ($house_id != null && $house_id != "")
      {
      	$house = new beanHouse($conn);
      	$house->__set("house_id", $house_id);
      	$house->__doLoad();
      	if (!$house->__get("exists")) {
      		header('Location: 2-availability.php');
      	}
      	$available = new beanAvailable('HouseAvailable', array("house_id"), $conn);
      	$available->__set("house_id", $house_id);
      	$available->__doLoad();

      	if (!$available->__get("exists") && !$_SESSION["access"]) {
      		header('Location: index.php?action=apt_vacancies');
      	}
      	//var_dump($available);
      	//var_dump($house);

      	$googleMap = new classGoogleMap($house);
      	$houseGallery = new classHouseGallery($conn);
      	$gallery = $houseGallery->__getGallery($house_id, $conn);
      	$gallery->__doLoadPhotos();
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
                  <div class="col-lg-8">
                      <h2 class="line-3"><?php echo "{$house->__get('house_num')} {$house->__get('street')}" ?></h2>
                      <div class="row row-30">
                          <div class="col-lg-12">
                              <p class="text-default-3">
                                <?php echo nl2br($house->__get('description')) ?>
                              </p>
                          </div>


                      </div>
                  </div>
                  <div class="col-lg-4">
                      <div class="row row-30">
                        <?php echo $googleMap->embedMap(); ?>
                      </div>
                  </div>
              </div>
          </div>
          <?php
          $options["path"] = $house->__get('house_num').$house->__get('street');
          $options["thumbs"] = "thumbs";
          include("templates/owl-gallery.inc.php");
          ?>
      </section>

    </main>
    <?php
    include("templates/footer.inc.php");
    ?>
