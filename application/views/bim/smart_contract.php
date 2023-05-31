<div class="container-fluid mb-5">
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <div class="row ">
        <div class="col-lg">
        <?php if (validation_errors()) : ?>
            <div class="alert alert-danger" role="alert">
                <?= validation_errors(); ?>
            </div>
        <?php endif; ?>
        <?= 
        $this->session->flashdata('message');
         ?>
        </div>
    </div>

    <div class="row"> 
        
        <div class="col-xl-4">
            <!--File -->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header">Smart Contract</div>
                <div class="card-body ">
                    <div class="font-italic mb-4 text-info"><i class="fas fa-dollar-sign"></i> = Rp.<?= $saldo ?>,00</div>
                    <label class="text-dark">Address </label>= <p class="text-primary"><?= $user['token'] ?></p>
                </div>
             </div>
        </div>        


    </div>

</div>