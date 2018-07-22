<?php
    // Template Name: Home

    get_header();
?>
    <section class="probootstrap-hero" style="background-image: url(<?php TEMPLATEPATH . the_field('imagem_de_background'); ?>)" data-section="home" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row intro-text">
          <div class="col-md-8 col-md-offset-2 text-center">
            <h1 class="probootstrap-heading probootstrap-animate">
              <?php the_field('titulo_inicial_home'); ?>
            </h1>
            <div class="probootstrap-subheading center">
              <p class="probootstrap-animate">
                <a href="https://app.tecnofit.com.br/aluno/login" role="button" class="btn btn-primary smoothscroll">Área do Aluno</a>
                <a href="#about" class="btn btn-default smoothscroll" role="button">Sobre</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="probootstrap-section">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="probootstrap-service-item probootstrap-animate" data-animate-effect="fadeIn">
              <span class="text-center icon icon-puzzle"></span>
              <h2 class="text-center">
                <?php
                  // título do diferencial
                  the_field('titulo_diferencial_1');
                ?>
              </h2>
              <p>
                <?php
                  // texto descrevendo o diferencial
                  the_field('texto_diferencial_1');
                ?>
              </p>
              <!-- trecho que pode ser útil futuramente 
                <p>
                  <a href="#" class="probootstrap-link">Saiba mais <i class="icon-chevron-right"></i></a>
                </p>
              -->
            </div>
          </div>
          <div class="col-md-4">
            <div class="probootstrap-service-item probootstrap-animate" data-animate-effect="fadeIn">
              <span class="text-center icon icon-heart3"></span>
              <h2 class="text-center">
                <?php
                  // título do diferencial
                  the_field('titulo_diferencial_2');
                ?>
              </h2>
              <p>
                <?php
                  // texto descrevendo o diferencial
                  the_field('texto_diferencial_2');
                ?>
              </p>
              <!-- trecho que pode ser útil futuramente 
                <p>
                  <a href="#" class="probootstrap-link">Saiba mais <i class="icon-chevron-right"></i></a>
                </p>
              -->
            </div>
          </div>
          <div class="col-md-4">
            <div class="probootstrap-service-item probootstrap-animate" data-animate-effect="fadeIn">
              <span class="text-center icon icon-wallet2"></span>
              <h2 class="text-center">
                <?php
                  // título do diferencial
                  the_field('titulo_diferencial_3');
                ?>
              </h2>
              <p>
                <?php
                  // texto descrevendo o diferencial
                  the_field('texto_diferencial_3');
                ?>
              </p>
              <!-- trecho que pode ser útil futuramente 
                <p>
                  <a href="#" class="probootstrap-link">Saiba mais <i class="icon-chevron-right"></i></a>
                </p>
              -->
            </div>
          </div>
        </div>
      </div>
    </section>

    <?php 
      // Incluindo a página Sobre
      include('page-sobre.php');

      // Incluindo a página Servico
      include('page-servicos.php');

      // Incluindo a página de Modalidades
      include('page-modalidades.php');
      // Incluindo a página de Alunos
      include('page-alunos.php');
      // Incluindo a página Contato
      include('page-contato.php');
    ?>
    <!-- END section -->

<?php
    get_footer();
?>