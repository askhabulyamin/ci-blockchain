<div class="container-fluid">
<div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800"><?= $title; ?></h1>
      <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
  </div>

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