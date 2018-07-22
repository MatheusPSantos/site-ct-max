<?php
  // cabeçalho do site
  get_header();
  // Loop de post
  if(have_posts()) {
    while(have_posts()) {
      the_post();
      echo '<h1>'.the_title().'</h1>';
      echo '<h1>'.the_content().'</h1>';
    }
  }
  // Rodapé do site
  get_footer();
?>