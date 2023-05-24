<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <!-- <h1 class="h3 mb-4 text-gray-800"></h1> -->
  
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800"><?= $title; ?></h1>
      <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a> -->
  </div>
  <div class="row">
      <!-- QUERY MENU -->
      <?php 
      $role_id = $this->session->userdata('role_id');
      $queryMenu = "SELECT `user_menu`.`id`,`menu` 
                      FROM `user_menu` JOIN `user_access_menu`
                        ON `user_menu`.`id` = `user_access_menu`.`menu_id`
                     WHERE NOT (`user_menu`.`id`= 1 OR `user_menu`.`id`= 2 OR `user_menu`.`id`= 3) AND `user_access_menu`.`role_id` = $role_id 
                  ORDER BY `user_access_menu`.`menu_id` ASC 
      ";
      $menu = $this->db->query($queryMenu)->result_array();
      ?>

      <!-- LOOPING MENU -->
      <?php foreach($menu as $m) : ?>

      <div class="col-xl-3 col-md-6 mb-4">
        <div class="card shadow h-100 py-2">
            <div class="card-body text-center">
                <div class="row  align-items-center">
                    <div class="col-md-12">
                      <img src="<?= base_url('assets/img/icon-1.jpg'); ?>"  class="img-thumbnail mb-4">
                    </div>
                    <div class="col-md-12">
                        <a class="nav-link pb-0" href="<?= base_url('block'); ?>"><h4 class="text-center"> <?= $m['menu']; ?></h5></a>
                    </div>
                </div>
            </div>
        </div>
      </div>

      <?php endforeach; ?>

  </div>
</div>
<!-- /.container-fluid -->




