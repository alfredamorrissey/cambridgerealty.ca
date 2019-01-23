<!-- RD Navbar -->
<div class="rd-navbar-wrap">
    <nav class="rd-navbar" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="46px" data-xl-stick-up-offset="46px" data-xxl-stick-up-offset="46px" data-lg-stick-up="true">
        <div class="rd-navbar-inner">
            <!-- RD Navbar Panel -->
            <div class="rd-navbar-panel">
                <!-- RD Navbar Toggle -->
                <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar"><span></span></button>
                <!-- END RD Navbar Toggle -->
                <!-- RD Navbar Brand -->
                <div class="rd-navbar-brand">
                    <a href="index.html" class="brand-name primary-color">
                      <div class="row row-60">
                        <div class="col-lg-5">
                          <img src="images/logo2.png" width="200px"/>
                        </div>
                        <div class="col-lg-7" style="margin-top: 15px">
                          <span class="text-light">Cambridge&nbsp;Realty&nbsp;(Ottawa)&nbsp;Limited</span>
                          <span class="text-ubold brand-slogan">Urban Living</span>
                        </div>
                      </div>
                    </a>
                </div>
                <!-- END RD Navbar Brand -->
            </div>
            <!-- END RD Navbar Panel -->
            <div class="rd-navbar-nav-wrap">
                <!-- RD Navbar Nav -->
                <ul class="rd-navbar-nav">
                    <li class="line-1 <?php echo (defined("IN_INDEX") ? "active" : ""); ?>">
                        <a href="index.php">Home</a>
                    </li>
                    <li class="<?php echo (defined("IN_AVAILABILITY") ? "active" : ""); ?>" >
                        <a href="2-availability.php">Availability</a>
                        <ul class="rd-navbar-dropdown">
                          <li>
                              <a href='2-availability.php#apartment_styles'>Floor Plans</a>
                          </li>

                        </ul>
                    </li>
                    <li class="<?php echo (defined("IN_APPLY_NOW") ? "active" : ""); ?>">
                        <a href="3-apply-now.php">Apply Now</a>
                    </li>
                    <li class="<?php echo (defined("IN_GALLERY") ? "active" : ""); ?>">
                        <a href="4-gallery.php">Gallery</a>
                    </li>
                    <li class="<?php echo (defined("IN_CONTACTS") ? "active" : ""); ?> ">
                        <a href="5-contacts.php">Contacts</a>
                    </li>
                </ul>

                <!-- END RD Navbar Nav -->
            </div>
        </div>
    </nav>
</div>
<!-- END RD Navbar -->
