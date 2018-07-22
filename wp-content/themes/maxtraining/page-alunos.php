<?php
    //Template Name: Alunos
    $alunos = 57;
?>

<section class"probootstrap-section probootstrap-cta">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center">
                <h2 class="probootstrap-heading">
                    <?php the_field('titulo_alunos', $alunos); ?>
                </h2>
                <p class="probootstrap-sub-heading">
                    <?php the_field('texto_alunos', $alunos);?>
                </p>
            </div>

            <div class="col-md-6">
                <div class="probootstrap-service-item probootstrap-animate" data-animate-effect="fadeIn">
                    <span class="icon"></span>
                    <h2 class="probootstrap-sub-heading">
                        <?php the_field('aula_gratuita', $alunos); ?>
                    </h2>
                    <p>
                        <?php the_field('chamada_aula_gratuita', $alunos); ?>
                    </p>
                    <p>
                        <a href="https://docs.google.com/forms/d/e/1FAIpQLSd0KEGyKrLHB7mexFdvC40RfdB4-Bxud8uSpc6SQTPsRopdTw/viewform" target="_blank" class="probootstrap-link">Aula Grátis<i class="icon-chevron-right"></i></a>
                    </p>
                </div>
            </div>

            <div class="col-md-6">
                <div class="probootstrap-service-item probootstrap-animate" data-animate-effect="fadeIn">
                    <img src="<?php TEMPLATEPATH.the_field('icone_aplicativo', $alunos); ?>" alt="<?php the_field('descricao_icone', $alunos); ?>">
                    <h2 class="probootstrap-sub-heading">
                        <?php the_field('aplicativo_alunos', $alunos); ?>
                    </h2>
                    <p>
                        <a href="<?php the_field('link_area_aluno', $alunos);?>" class="probootstrap-link primary">Área do Aluno <i class="icon-chevron-right"></i> </a>
                    </p>
                </div>
            </div>          
        </div>

        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center">
                <div class="probootstrap-animate" data-animate-effect="fadeIn">
                    <h2 class="probootstrap-sub-heading">
                        <?php the_field('chamada_download_app', $alunos);?>
                    </h2>
                </div>
            </div>
            <div class="col-md-6 text-center probootstrap-animate">
                <p class="probootstrap-animate">
                    <p>Para os alunos da modalidade CROSSFIT</p>
                    <a href="<?php the_field('link_download_crossfit_android', $alunos); ?>" role="button" class="btn btn-primary smoothscroll">
                        <i class="icon icon-download"></i>&nbsp; Android <i class="icon icon-android"></i>
                    </a>

                    <a href="<?php the_field('link_download_crossfit_ios', $alunos); ?>" role="button" class="btn btn-primary smoothscroll">
                        <i class="icon icon-download"></i>&nbsp; IOS <i class="icon icon-appleinc"></i>
                    </a>                        
                </p>
            </div>
            <div class="col-md-6 text-center probootstrap-animate">
                <p class="probootstrap-animate">
                    <p>Para os alunos da modalidade PERSONALIZADA</p>
                    <a href="<?php the_field('link_download_personalizada_android', $alunos); ?>" role="button" class="btn btn-primary smoothscroll">
                        <i class="icon icon-download"></i> &nbsp; Android <i class="icon icon-android"></i>
                    </a>
                    <a href="<?php the_field('link_download_personalizada_ios', $alunos); ?>" role="button" class="btn btn-primary smoothscroll">
                        <i class="icon icon-download"></i>&nbsp; IOS <i class="icon icon-appleinc"></i>
                    </a>                        
                </p>
            </div>
            
        </div>
    </div>
</section>