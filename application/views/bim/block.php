<div class="container-fluid">
  <div class="row">
  <?php $i = 1; ?>
  <?php foreach($block as $sm) : ?>

  <div class="col-md-4">
    <div class="card shadow mb-4">
    <!-- Card Header - Dropdown -->
      <!-- Card Body -->
      <div class="card-body">
          <h3 class="text-center"><?= $sm['project_name']; ?></h3>
      </div>
      <div class="card-footer text-center">
        <a target="_blank" class="btn btn-primary  btn-block" rel="nofollow" href="https://undraw.co/">Open →</a>
      </div>
    </div>
  </div>

  <?php endforeach; ?>
  </div>
</div>