<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title>Agenda</title>
</head>

<body class="p-3 mb-2 bg-primary text-white">
    <div class="container">
        <div class="row align-items-start">
            <div class="col">
             <br>
             <br>
                 <hr>
                    <h1 class="text-center fw-bold">Preencha a Agenda</h1>
                 <hr>
            </div>
             <div class="row g-3">
              <div class="col">
                    <input type="text" class="form-control" name="nome" value="<?php echo ($agd[0]['nome_contato']); ?>" id="nmcontato" placeholder="Nome">
             </div>
               <div class="col">
                    <input type="text" class="form-control" name="numero" value="<?php echo ($agd[0]['tel_contato']); ?>" id="telcontato" placeholder="Número">
              </div>
               </div>
                <div class="row g-3">
                  <div class="col">
                    <input type="text" class="form-control" name="email" value="<?php echo ($agd[0]['email_contato']); ?>" id="emailcontato" placeholder="Email">
                </div>
                 </div>
        </div>
    </div>
</body>
</html>