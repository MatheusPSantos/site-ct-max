<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
      <?php bloginfo('name'); ?>
    </title>
    <meta name="description" content="Free Bootstrap Theme by ProBootstrap.com">
    
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri();?>/css/styles-merged.css">
    <!--<link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri();?>/css/style.min.css"> -->
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri();?>/style.css">
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri();?>/fonts/icomoon/style.css">
    <link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri();?>/img/favicon.png">


    <!--[if lt IE 9]>
      <script src="<?php echo get_stylesheet_directory_uri();?>/js/vendor/html5shiv.min.js"></script>
      <script src="<?php echo get_stylesheet_directory_uri();?>/js/vendor/respond.min.js"></script>
    <![endif]-->

    <!--  Cabeçalho do Wordprees  -->
    <?php wp_head(); ?>
  </head>
  <body>
    
    <!-- Fixed navbar -->
    <nav class="navbar navbar-default probootstrap-navbar">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/maxtraining" title="ProBootstrap:Frame">
            <img src="<?php echo get_stylesheet_directory_uri();?>/img/navbar-logo.png" alt="logo da Maxtraining">
          </a>
        </div>

        <div id="navbar-collapse" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="#" data-nav-section="home">Home</a></li>
            <li><a href="#" data-nav-section="about">Sobre Nós</a></li>
            <li><a href="#" data-nav-section="services">Serviços</a></li>
            <li><a href="#" data-nav-section="contact">Contato</a></li>
          </ul>
        </div>
      </div>
    </nav>