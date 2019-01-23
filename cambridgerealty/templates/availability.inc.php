<?php
require_once 'dbconfigs.inc.php';
require_once 'common.inc.php';
?>
<!-- Availability -->
<section class="well-xl" >
  <div class="container">
      <div class="row align-items-lg-center">
          <div class="col-xl-12">
              <h2 class="line-3">Availability</h2>
              <p class="text-default-2 inset-1 letter-spacing-1">View our available properties</p>
          </div>

      </div>
  </div>
    <div class="container" id="sct-availability">
      <div class="row row-60">
        <div class="col-lg-6">
          <?php
          include("templates/apartment_availability.inc.php");
          ?>

        </div>

        <div class="col-lg-6">
          <?php
          include("templates/house_availability.inc.php");
          ?>
        </div>
    </div>
    </div>
</section>
<!-- END Availability -->
