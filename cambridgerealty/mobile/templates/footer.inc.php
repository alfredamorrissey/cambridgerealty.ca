</div> <!-- #main -->
</div> <!-- #main-container -->
	   <div class="footer-container">
            <footer class="wrapper">
                <div class="footer_links" name="footer_links"><a href="index.html">Home</a> | <a href="apartments.html">Senator Apartments</a> | <a href="homes.html">Rental Homes</a> | <a href="how_to_rent.html">Apply Now</a> | <a href="contact_us.html">Contact Us</a> |</div>

				<div class="footer_address">470 Cambridge St South Ottawa. Ontario K1S 4H8 613-232-2396</div>

				<div class="footer_links" name="footer_links">&copy; Copyright 2015</div>
<span id="siteseal"><script async type="text/javascript" src="https://seal.godaddy.com/getSeal?sealID=qmZ7LbPiN7j4edUBMAihkCsM40oG2EfZTvy4VoMAdEXFF05AEEup5ymaZokM"></script></span>
            </footer>
        </div>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.js"><\/script>')</script>
        <script src="js/vendor/owl.carousel.js"></script>
        <script src="js/vendor/jquery-ui.min.js"></script>
        <script src="js/vendor/jquery.cropit.js"></script>

        <script src="js/main.js"></script>
        <script>
          $(function() {
            init_bindings();
            $('.image-editor').each(function() {
              src_url = $(this).data("src");
              $(this).cropit({imageState: {src: src_url}});
            });

            $('form.create_thumb').submit(function() {
              // Move cropped image data to hidden input
              $('.image-editor').each(function() {
                photo_id = $(this).data("photo-id");
                $("input#image-data-"+photo_id).val($(this).cropit('export'));
              });
            });
          });
        </script>
        <script >
        $('.owl-carousel').owlCarousel({
            items:4,
            loop:false,
            margin:30,
            merge:false,
            mouseDrag:false,
            touchDrag:true,
            nav: true,
            navText: ['', ''],
            //autoWidth:true,
            //autoHeight:true,
            responsive:{
                678:{
                    mergeFit:true
                },
                1000:{
                    mergeFit:false
                }
            }
        });
        $('div.owl-stage').sortable({
          axis: 'x',
          update: function (event, ui) {
  	        //var data = $(this).sortable('serialize');
            $(this).children().each(
              function(index) {
                order = $(this).find("div.item").data("photo-order");
                photo_id = $(this).find("div.item").data("photo-id");
                gallery_id = $(this).find("div.item").data("gallery-id");
                if (index != order) {
                  reorder_photo(gallery_id, photo_id, index);
                }
              }
            );
              /*$.ajax({
                      data: oData,
                  type: 'POST',
                  url: '/your/url/here'
              });*/
  	      }
        });
        </script>


    </body>
</html>
<?php $conn->close(); ?>
