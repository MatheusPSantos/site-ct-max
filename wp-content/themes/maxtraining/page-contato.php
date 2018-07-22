<?php
    // Template Name: Contato
    $contato = 10; // Id da pagina
?>

    <section class="probootstrap-section probootstrap-bg-light" data-section="contact">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <form action="" class="probootstrap-form">
              <h2 class="text-black mt0">Envie-nos uma mensagem</h2>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Seu Nome">
              </div>
              <div class="form-group">
                <input type="email" class="form-control" placeholder="Seu Email">
              </div>
              <div class="form-group">
                <input type="email" class="form-control" placeholder="Seu Telefone">
              </div>
              <div class="form-group">
                <textarea class="form-control"cols="30" rows="10" placeholder="Escreva sua mensagem"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Enviar Mensagem">
              </div>
            </form>
          </div>
          <div class="col-md-3 col-md-push-1">
            <ul class="probootstrap-contact-details">
              <li>
                <span class="text-uppercase">Email</span>
                <?php the_field('email_de_contato', $contato);  ?>
              </li>
              <li>
                <span class="text-uppercase">Telefone</span>
                <?php the_field('telefones_de_contato', $contato); ?>
              </li>
              <li>
                <span class="text-uppercase">Endereço</span>
                <?php the_field('cidade_de_origem', $contato);?>, <?php the_field('estado_de_origem', $contato);?> <br>
                <?php the_field('pais_de_origem', $contato); ?>  <br>
                <?php the_field('endereco_fisico', $contato);?> <?php the_field('bairro', $contato); ?>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>