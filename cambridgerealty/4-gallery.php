      <?php
      define("IN_GALLERY", 1);
      include("templates/header.inc.php");
      ?>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <main class="page-content">
        <!-- Gallery -->
        <section class="well-sm-2">
          <?php
          $options["title"] = "Gallery";
          $options["description"] = "Best apartments for you";
          $options["path"] = array("gallery-general" => array("col1", "col2", "col3", "col4"));
          $options["thumbs"] = "thumbs";
          $options["size"] = "4";

          include("templates/gallery.inc.php");
          ?>

        </section>
        <!-- END Gallery -->
    </main>
    <?php
    include("templates/footer.inc.php");
    ?>
