

      <?php
      require_once 'common.inc.php';
      define("IN_CONTACTS", 1);
      include("templates/header.inc.php");
      ?>
    <!--========================================================
                              CONTENT
    =========================================================-->

    <!-- Contacts -->
    <section class="well-sm-2">
        <div class="container" data-lightbox="gallery">
            <h2 class="line-3">Contacts</h2>
            <p class="text-default-2 inset-1 letter-spacing-1">How to find us</p>
            <div class="row justify-content-lg-between">
                <div class="col-xl-4 col-lg-5 address text-center text-md-left">
                    <h2 class="text-primary">Cambridge Realty (Ottawa) Limited</h2>
                    <div class="row offset-20">
                        <div class="col-lg-7 ">
                            <dl class="contact_list">
                                <dt>Address:</dt>
                                <dd>
                                    <div class="box">
                                        <div class="aside">
                                            <span class="fa fa-home"></span>
                                        </div>
                                        <div class="cnt cnt1">
                                            <p><a href="#"> 470 Cambridge St South
                                              Ottawa, Ontario K1S 4H8</a></p>
                                        </div>
                                    </div>
                                </dd>
                                <dt>Phone:</dt>
                                <dd>
                                    <div class="box">
                                        <div class="aside">
                                            <span class="fa  fa-phone"></span>
                                        </div>
                                        <div class="cnt">
                                            <a href="tel:#">613-232-2396</a>
                                        </div>
                                    </div>
                                </dd>
                                <dt>Fax:</dt>
                                <dd>
                                    <div class="box">
                                        <div class="aside">
                                            <span class="fa  fa-phone"></span>
                                        </div>
                                        <div class="cnt">
                                            <a href="tel:#">613-232-0667</a>
                                        </div>
                                    </div>
                                </dd>
                                <dt>E-mail:</dt>
                                <dd>
                                    <div class="box">
                                        <div class="aside">
                                            <span class="fa fa-envelope"></span>
                                        </div>
                                        <div class="cnt">
                                            <a href="mailto:maintenance@cambridgerealty.ca">Maintenance Request</a>
                                        </div>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                  <img src="images/photo_contact_us_01.jpg" width="50%"/>
                    <?php /*
                    $googleMap = new classGoogleMap();
                    echo $googleMap->embedMap(); */ ?>

                </div>
            </div>
        </div>
    </section>
    <!-- END Contact us -->
    <section>
        <!-- RD Google Map -->
        <div class="google-map-container" data-center="470 Cambridge St South, Ottawa, Ontario K1S 4H8" data-key="AIzaSyAQKAYk9-AYG33EHPFWyOEAGwbZaNZ_ULA" data-styles="[{&quot;featureType&quot;:&quot;landscape&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:60}]},{&quot;featureType&quot;:&quot;road.local&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:40},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;transit&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;administrative.province&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;on&quot;},{&quot;lightness&quot;:30}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ef8c25&quot;},{&quot;lightness&quot;:40}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.stroke&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;poi.park&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#b6c54c&quot;},{&quot;lightness&quot;:40},{&quot;saturation&quot;:-40}]},{}]">
            <div class="google-map"></div>
            <ul class="google-map-markers">
                <li data-location="470 Cambridge St South Ottawa, Ontario K1S 4H8" data-description="470 Cambridge St South Ottawa, Ontario K1S 4H8" data-icon="images/gmap_marker.png" data-icon-active="images/gmap_marker_active.png"></li>
            </ul>
        </div>
        <!-- END RD Google Map -->
    </section>
    <?php
    include("templates/footer.inc.php");
    ?>
