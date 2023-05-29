<div class="container-fluid">
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

    <form action="<?= base_url('block/transaction'); ?>" enctype="multipart/form-data" method="post">
    <div class="row"> 

        <div class="col-xl-8">
            <!-- Account details card-->
            <div class="card mb-4">
                <div class="card-header">Transaction</div>
                <div class="card-body">
                        <!-- Form Row-->
                        <div class="form-group">
                            <input class="form-control" id="address" name="address" type="hidden" value="<?= $user['token'] ?>">
                            <label class=" mb-1" for="name">To Address</label>
                            <input class="form-control" id="to_address" name="to_address" type="text" placeholder="Enter to adress smart contract" value="">
                        </div>
                        <div class="form-group">
                            <label class=" mb-1" for="type">Value</label>
                            <input class="form-control" id="value" name="value" type="text" placeholder="Payment value" value="">

                        </div>
                        <!-- Submit button-->
                        <button class="btn btn-primary" type="submit">Sent Payment</button>
                </div>
            </div>
        </div>
        <div class="col-xl-4">
            <!--File -->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header">Smart Contract</div>
                <div class="card-body ">
                    <div class=" font-italic text-muted mb-4"><i class="fas fa-dollar-sign"></i> = Rp.<?= $saldo ?>,00</div>
                    Address = <?= $user['token'] ?>
                </div>
             </div>
        </div>        


    </div>
    </form>
    <div class="row">
          	<div class="col-lg">
				
          		<table class="table table-hover">
				  <thead>
				    <tr>
				      <th scope="col">#</th>
				      <!-- <th scope="col">Block</th> -->
				      <th scope="col">Address</th>
				      <th scope="col">Value</th>
				      <th scope="col">To</th>
				      <!-- <th scope="col">Status</th> -->
				    </tr>
				  </thead>
				  <tbody>
				  	  <?php $i = 1; ?>
					  <?php foreach($transaction as $sm) : ?>
					    <tr>
					      <th scope="row"><?= $i++; ?></th>
					      <!-- <td><?= $sm['id_block']; ?></td> -->
					      <td><?= $sm['address']; ?></td>
					      <td><?= $sm['value']; ?></td>
					      <td><?= $sm['to_address']; ?></td>
					      <!-- <td><?= $sm['status']; ?></td> -->
					      <!-- <td>
							<a href="" data-id="<?= $sm['id']; ?>" class="badge badge-success submenu-edit" data-toggle="modal" data-target="#newSubmenuModal">Edit</a>
							<a onclick="return confirm('Delete this Submenu?')" href="<?= base_url('menu/delete/submenu/').$sm['id']; ?>" class="badge badge-danger">Delete</a>
					      </td> -->
					    </tr>
					  <?php endforeach; ?>
				  </tbody>
				</table>

          	</div>
          </div>
       
  </div>
</div>