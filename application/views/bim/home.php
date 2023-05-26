<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <!-- <h1 class="h3 mb-4 text-gray-800"></h1> -->
  
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <h1 class="h3 mb-0 text-gray-800"><?= $title; ?></h1>
      <!-- <a href="<?= base_url('block/validation')?>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-plus fa-sm text-white-50"></i> Add Validation</a> -->
  </div>
  <div class="row">
      <!-- QUERY MENU -->
      <?php 
      $idmenu = $_GET['id'];
      $role_id = $this->session->userdata('role_id');
      $queryMenu1 = "SELECT `user_menu`.`id`,`menu` 
                        FROM `user_menu` JOIN `user_access_menu`
                            ON `user_menu`.`id` = `user_access_menu`.`menu_id`
                        WHERE `user_access_menu`.`role_id` = $role_id
                    ORDER BY `user_access_menu`.`menu_id` ASC 
      ";
      $menu1 = $this->db->query($queryMenu1)->result_array();

      $queryMenu = "SELECT user_sub_menu.*  FROM `user_sub_menu` 
                    LEFT JOIN `user_menu` ON `user_sub_menu`.`menu_id` = `user_menu`.`id`
                    LEFT  JOIN `user_access_menu` ON `user_menu`.`id` = `user_access_menu`.`menu_id`
                    LEFT JOIN `user_role` ON `user_access_menu`.`role_id` = `user_role`.`id`
                    WHERE NOT (`user_sub_menu`.`menu_id`= 1 OR `user_sub_menu`.`menu_id`= 2 
                    OR `user_sub_menu`.`menu_id`= 3 or `user_sub_menu`.`id`= 1 ) 
                    AND `user_access_menu`.`role_id` = $role_id AND `user_menu`.`id` = $idmenu
        ";
      $menu = $this->db->query($queryMenu)->result_array();
      ?>
      <!-- LOOPING MENU -->
      <?php foreach($menu as $m) : ?>

        <div class="col-xl-3 col-md-6 mb-4 ">
          <div class="card shadow h-100 py-2">
              <div class="card-body text-center">
                  <div class="row  align-items-center">
                      <div class="col-md-12">
                        <img src="<?= base_url('assets/img/').$m['icon_file']; ?>"  class="img-thumbnail mb-4">
                      </div>
                      <div class="col-md-12">
                          <a class="nav-link pb-0" href="<?= base_url($m['url'].'?id='.$m['id']); ?>"><h4 class="text-center"> <?= $m['title']; ?></h5></a>
                      </div>

                  </div>
              </div>
          </div>
        </div>

      <?php endforeach; ?>

  </div>
</div>
<!-- /.container-fluid -->




