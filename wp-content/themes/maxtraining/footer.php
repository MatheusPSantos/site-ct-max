<?php 
  // Template Name: Rodape
  $rodape = 37; // Id de página do rodapé
?>    
    
    <footer class="probootstrap-footer">
      <div class="container text-center">
        <div class="row">
          <div class="col-md-12">
            <p class="probootstrap-social">
<!--               <a href="<?php the_field('link_do_'); ?>">
                <i class="icon-twitter"></i>
              </a> -->
              <a href="<?php the_field('link_do_facebook', $rodape); ?>" target="_blank">
                <i class="icon-facebook2"></i>
              </a>
              <a href="<?php the_field('link_do_instagram', $rodape); ?>" target="_blank">
                <i class="icon-instagram2"></i>
<!--               </a>
                <a href="<?php the_field('link_do_'); ?>"><i class="icon-linkedin"></i>
              </a> -->
            </p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            &copy; <?php echo date("Y");?> <a href="#"><?php bloginfo(); ?></a>. All Rights Reserved. <br>&amp; Developed by <a target="_blank" href="https://matheuspsantos.github.io">MatheusPSantos</a>
          </div>
        </div>
      </div>
    </footer>

    <!-- Rodapé do Wordpress -->
    <?php
        wp_footer();
    ?>
    

    <script src="<?php echo get_stylesheet_directory_uri();?>/js/scripts.min.js"></script>
    <script src="<?php echo get_stylesheet_directory_uri();?>/js/custom.js"></script>

    <!-- Google Map -->
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="<?php echo get_stylesheet_directory_uri();?>/js/google-map.js"></script> -->

  </body>
</html>