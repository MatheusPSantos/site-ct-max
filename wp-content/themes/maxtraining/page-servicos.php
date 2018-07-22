<?php
    // Template Name: Servicos
    $servicos = 8; // Id da pagina de servicos
?>

    <section class="probootstrap-section" data-section="services" id="services">
      <div class="container">
        <div class="row text-center mb100">
          <div class="col-md-8 col-md-offset-2 probootstrap-section-heading">
            <h2 class="mb30 text-black probootstrap-heading">
              <?php the_field('titulo_servicos', $servicos); ?>
            </h2>
            <p></p>
          </div>
        </div>
        <!-- END row -->
        <div class="row">
          <div class="col-md-4">
            <div class="probootstrap-pricing">
              <h2>
                <?php the_field('nome_servico_1', $servicos); ?>
              </h2>
              <p class="probootstrap-price"><strong>
                R$ <?php the_field('valor_servico_1', $servicos); ?>
              </strong></p>
              <p class="probootstrap-note">
                <?php the_field('nota_sobre_servico_1', $servicos); ?>
              </p>
              <ul class="probootstrap-list text-left mb50">
                <li class="probootstrap-check">
                  <?php the_field('item_lista_descricao_servicos_1_1', $servicos);?>
                </li>
                <li class="probootstrap-check">
                  <?php the_field('item_lista_descricao_servicos_1_2', $servicos) ?>
                </li>
                <li class="probootstrap-check">
                  <?php the_field('item_lista_descricao_servicos_1_3', $servicos) ?>
                </li>
              </ul>
              <p><a href="<?php the_field('link_inscricao_servicos', $servicos);?>" class="btn btn-black" target="_blank">
                <?php the_field('valor_botao', $servicos); ?>
              </a></p>
            </div>
          </div>
          <div class="col-md-4">
            <div class="probootstrap-pricing probootstrap-popular probootstrap-shadow">
              <h2>
                <?php the_field('nome_servico_2', $servicos); ?>
              </h2>
              <p class="probootstrap-price"><strong>
                R$ <?php the_field('valor_servico_2', $servicos); ?>
              </strong></p>
              <p class="probootstrap-note">
                <?php the_field('nota_sobre_servico_2', $servicos); ?>
              </p>
              <ul class="probootstrap-list text-left mb50">
                <li class="probootstrap-check">
                  <?php the_field('item_lista_descricao_servicos_2_1', $servicos);?>
                </li>
                <li class="probootstrap-check">
                  <?php the_field('item_lista_descricao_servicos_2_2', $servicos) ?>
                </li>
                <li class="probootstrap-check">
                  <?php the_field('item_lista_descricao_servicos_2_3', $servicos) ?>
                </li>
              </ul>
              <p><a href="<?php the_field('link_inscricao_servicos', $servicos);?>" class="btn btn-primary" target="_blank">
                <?php the_field('valor_botao', $servicos); ?>
              </a></p>
            </div>
          </div>
          <div class="col-md-4">
            <div class="probootstrap-pricing">
              <h2>
                <?php the_field('nome_servico_3', $servicos); ?>
              </h2>
              <p class="probootstrap-price"><strong>
                R$ <?php the_field('valor_servico_3', $servicos); ?>
              </strong></p>
              <p class="probootstrap-note">
                <?php the_field('nota_sobre_servico_2', $servicos); ?>
              </p>
              <ul class="probootstrap-list text-left mb50">
                <li class="probootstrap-check">
                  <?php the_field('item_lista_descricao_servicos_3_1', $servicos);?>
                </li>
                <li class="probootstrap-check">
                  <?php the_field('item_lista_descricao_servicos_3_2', $servicos) ?>
                </li>
                <li class="probootstrap-check">
                  <?php the_field('item_lista_descricao_servicos_3_3', $servicos) ?>
                </li>
              </ul>
              <p><a href="<?php the_field('link_inscricao_servicos', $servicos);?>" class="btn btn-black" target="_blank">
                <?php the_field('valor_botao', $servicos); ?>
              </a></p>
            </div>
          </div>
        </div>
      </div>
    </section>
