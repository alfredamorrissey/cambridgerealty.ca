<!-- Swiper -->
<div class="swiper-container swiper-slider" data-height="39.365853658536585365853658536585%" data-min-height="400px" data-autoplay="2000">
    <div class="swiper-wrapper">
      <?php
        //If they have requested a swiper gallery, and provided a valid folder in the images folder
        if (is_dir("images/".SWIPER_GALLERY)) {
          //Get all the files in the swiper images folder
          $files = scandir("images/".SWIPER_GALLERY);
          //If it was unsuccessful, scandir returns false
          if ($files) {
            //For every file or directory in the swiper image folder
            foreach ($files as $key => $value) {
              //If it is not a directory (filters out . and ..)
              if (!is_dir("images/".SWIPER_GALLERY."/".$value)) {
                //Add it to the swiper gallery $value will be the name of the file, append the full path
              ?>
              <div class="swiper-slide" data-slide-bg="<?php echo ("images/".SWIPER_GALLERY."/".$value) ?>">
                  <div class="swiper-slide-caption">
                  </div>
              </div>
              <?php
              }
            }
          }
        } else {echo "ERROR NOT A VALID PATH: "."images/".SWIPER_GALLERY;}

        ?>
    </div>
    <!-- Swiper Pagination -->
    <div class="swiper-pagination" ></div>
</div>
<!-- END Swiper -->
