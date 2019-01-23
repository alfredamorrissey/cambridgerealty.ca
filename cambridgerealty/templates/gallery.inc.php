<div class="container" data-lightgallery="group">
    <h2 class="line-3"><?php echo $options["title"] ?></h2>
    <p class="text-default-2 inset-1 letter-spacing-1"><?php echo $options["description"] ?></p>
    <div class="row row-30">

<?php
$paths = array();
$grid_column = "";
$grid_close_div = "";
$flow_column = "";
$flow_close_div = "";

//If a path is not specified, return an error
if (!empty($options["path"])) {
//If they have specified an array, then it is a gallery with columns and the subfolders will provide the images for each column
  if (is_array($options["path"])) {
    $flow_column = "<div class=\"col-lg-".$options["size"]." col-md-".$options["size"]."\">";
    $flow_close_div = "</div>";

    foreach($options["path"] as $key => $columns) {
      foreach($columns as $column) {
        if (is_dir("images/" . $key . "/" . $column)) {
          $paths[] = "images/" . $key . "/" . $column;
        }
      }
    }
  } else {
    $grid_column = "<div class=\"col-lg-".$options["size"]." col-md-".$options["size"]."\">";
    $grid_close_div = "</div>";

    if (is_dir("images/" . $options["path"])) {
      $paths[] = "images/" . $options["path"];
    }
  }
}

foreach($paths as $path)  {
  echo $flow_column;
  //Get all the files in the swiper images folder
  //$files = scandir($path);
  $files = glob($path.'/*.{jpeg,gif,png,jpg}', GLOB_BRACE);
  //If it was unsuccessful, scandir returns false
  if (!empty($files) && is_array($files)) {
      //For every file or directory in the column image folder
      foreach ($files as $key => $value) {
        //If it is not a directory (filters out . and ..)
        if (!is_dir($value) ) {
          //Add it to the gallery $value will be the name of the file, append the full path
          echo $grid_column;
          $thumb_path = (!empty($options["thumbs"]) ? str_replace("full", $options["thumbs"], $value) : $value);
          ?>

            <div class="thumb thumb1">
                <a href="<?php echo $value ?>" data-lightgallery='item'>
                    <img src="<?php echo $thumb_path ?>" />
                    <div class="thumb__overlay"></div>

                </a>
            </div> <!-- thumb -->
        <?php
        echo $grid_close_div;
      } //if (!is_dir($path."/".$value))
    } // foreach ($files as $key => $value)
  } // if ($files)
  echo($flow_close_div);
} //foreach($paths as $path)

?>
  </div> <!-- row -->
</div> <!-- container -->
