<?php
    // Template Name: Sobre
    $sobre = 6; // recebendo o ID da página
?>

    <section class="probootstrap-section probootstrap-bg-light" id="about" data-section="about">
      <div class="container">
        <div class="row text-center mb100">
          <div class="col-md-8 col-md-offset-2 probootstrap-section-heading">
            <h2 class="mb30 text-black probootstrap-heading">
              <?php
                // título da seção Sobre
                the_field('titulo_sobre', $sobre);
              ?>
            </h2>
            <p>
              <?php 
                // texto descrevendo a empresa
                the_field('descricao_sobre', $sobre);
              ?>

            </p>
          </div>
        </div>
        <!-- END row -->
        <div class="row mb100">
          <div class="col-md-8 col-md-pull-2 probootstrap-animate">
            <p>
              <img src="<?php the_field('imagem_subtitulo_1', $sobre) ?>" class="img-responsive probootstrap-shadow">
            </p>
          </div>
          <div class="col-md-4 col-md-pull-1 probootstrap-section-heading">
            <h3 class="text-primary probootstrap-heading-2">
              <?php
                // Subtitulo
                the_field('subtitulo_1', $sobre);
              ?>
            </h3>
            <p>
              <p>
              
                <?php 
                  // texto descrevendo a empresa
                  the_field('texto_subtitulo_1', $sobre);
                ?>
              </p>
            </p>
          </div>
        </div>
        <!-- END row -->
        <div class="row mb100">
          <!-- <div class="col-md-8 col-md-pull-2"> -->
          <div class="col-md-8 col-md-push-5 probootstrap-animate">
            <p>
              <img src="<?php the_field('imagem_subtitulo_2', $sobre) ?>" class="img-responsive probootstrap-shadow">
            </p>
          </div>
          <!-- <div class="col-md-4 col-md-pull-1"> -->
          <div class="col-md-4 col-md-pull-8 probootstrap-section-heading">
            <h3 class="text-primary probootstrap-heading-2">
              <?php
                // Subtitulo
                the_field('subtitulo_2', $sobre);
              ?>
            </h3>
            <p>
              <p>
              
                <?php 
                  // texto descrevendo a empresa
                  the_field('texto_subtitulo_2', $sobre);
                ?>
              </p>
            </p>
          </div>
        </div>
        <!-- END row -->

        <div class="row mb100">
          <div class="col-md-8 col-md-pull-2 probootstrap-animate">
            <p>
              <img src="<?php the_field('imagem_subtitulo_3', $sobre) ?>" class="img-responsive probootstrap-shadow">
            </p>
          </div>
          <div class="col-md-4 col-md-pull-1 probootstrap-section-heading">
            <h3 class="text-primary probootstrap-heading-2">
              <?php
                // Subtitulo
                the_field('subtitulo_3', $sobre);
              ?>
            </h3>
            <p>
              <p>
              
                <?php 
                  // texto descrevendo a empresa
                  the_field('texto_subtitulo_3', $sobre);
                ?>
              </p>
            </p>
          </div>
        </div>
        <!-- END row -->
      </div>
    </section>
    <!-- END section -->
