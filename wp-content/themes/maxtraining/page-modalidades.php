<?php
    // Template Name: Modalidades
    $modalidades=49;
?>
    <section class="probootstrap-section probootstrap-cta">
      <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center">
                <h2 class="probootstrap-haeding"><?php the_field('titulo_modalidades', $modalidades); ?></h2>
                <p class="probootstrap-sub-heading"><?php the_field('subtitulo_modalidades', $modalidades); ?></p>
            </div>

            <div class="col-md-3">
                <div class="probootstrap-service-item probootstrap-animate" data-animate-effect="fadeIn">
                <span class="icon icon-stopwatch2 text-center probootstrap-sub-heading"></span>
                <h2 class="probootstrap-sub-heading text-center">
                    <?php the_field('titulo_modalidade_1', $modalidades); ?>
                </h2>
                <p>
                    <?php the_field('texto_modalidade_1', $modalidades); ?>
                </p>
                <!-- trecho que pode ser útil futuramente 
                    <p>
                    <a href="#" class="probootstrap-link">Saiba mais <i class="icon-chevron-right"></i></a>
                    </p>
                -->
                </div>
            </div>
            <div class="col-md-3">
                <div class="probootstrap-service-item probootstrap-animate" data-animate-effect="fadeIn">
                <span class="icon icon-users2 text-center probootstrap-sub-heading"></span>
                <h2 class="probootstrap-sub-heading text-center">
                    <?php the_field('titulo_modalidade_2', $modalidades); ?>
                </h2>
                <p>
                    <?php the_field('texto_modalidade_2', $modalidades); ?>
                </p>
                <!-- trecho que pode ser útil futuramente 
                    <p>
                    <a href="#" class="probootstrap-link">Saiba mais <i class="icon-chevron-right"></i></a>
                    </p>
                -->
                </div>
            </div>
            <div class="col-md-3">
                <div class="probootstrap-service-item probootstrap-animate" data-animate-effect="fadeIn">
                <span class="icon icon-star-empty text-center probootstrap-sub-heading"></span>
                <h2 class="probootstrap-sub-heading text-center">
                    <?php the_field('titulo_modalidade_3', $modalidades); ?>
                </h2>
                <p>
                    <?php the_field('texto_modalidade_3', $modalidades); ?>
                </p>
                <!-- trecho que pode ser útil futuramente 
                    <p>
                    <a href="#" class="probootstrap-link">Saiba mais <i class="icon-chevron-right"></i></a>
                    </p>
                -->
                </div>
            </div>
            <div class="col-md-3">
                <div class="probootstrap-service-item probootstrap-animate" data-animate-effect="fadeIn">
                <span class="icon icon-slideshare text-center probootstrap-sub-heading"></span>
                <h2 class="probootstrap-sub-heading text-center">
                    <?php the_field('titulo_modalidade_4', $modalidades); ?>
                </h2>
                <p>
                    <?php the_field('texto_modalidade_4', $modalidades); ?>
                </p>
                <!-- trecho que pode ser útil futuramente 
                    <p>
                    <a href="#" class="probootstrap-link">Saiba mais <i class="icon-chevron-right"></i></a>
                    </p>
                -->
                </div>
            </div>

    </section>