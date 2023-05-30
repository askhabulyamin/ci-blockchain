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
      $role_id = $this->session->userdata('role_id');
      $queryMenu = "SELECT `user_menu`.`id`,`user_menu`.`menu`, `user_menu`.`icon`, `user_sub_menu`.`title`, `user_sub_menu`.`url`
                      FROM `user_menu` 
                    LEFT  JOIN `user_access_menu` ON `user_menu`.`id` = `user_access_menu`.`menu_id`
										LEFT JOIN `user_sub_menu` ON `user_access_menu`.`menu_id` = `user_sub_menu`.`menu_id`
                    WHERE NOT (`user_menu`.`id`= 1 OR `user_menu`.`id`= 2 OR `user_menu`.`id`= 3) AND `user_access_menu`.`role_id` = $role_id 
                    GROUP BY `user_access_menu`.`menu_id` ASC 
      ";
      $menu = $this->db->query($queryMenu)->result_array();
      ?>

      <!-- LOOPING MENU -->
      <?php foreach($menu as $m) : ?>
        <?php 
          $role = $m['id'];
          $querySubMenu = "SELECT * 
                              FROM `user_role`
                              LEFT  JOIN `user_access_menu` ON `user_role`.`id` = `user_access_menu`.`role_id`
                              WHERE `user_access_menu`.menu_id = $role ORDER BY user_role.id asc
          ";
          $roles = $this->db->query($querySubMenu)->result_array(); 
        ?>
        <?php 
        $menuid = $m['id'];
          $queryMenu = "SELECT *FROM `user_sub_menu` 
                        LEFT JOIN `user_menu` ON `user_sub_menu`.`menu_id` = `user_menu`.`id`
                        LEFT  JOIN `user_access_menu` ON `user_menu`.`id` = `user_access_menu`.`menu_id`
                        LEFT JOIN `user_role` ON `user_access_menu`.`role_id` = `user_role`.`id`
                        WHERE NOT (`user_sub_menu`.`menu_id`= 1 OR `user_sub_menu`.`menu_id`= 2 
                        OR `user_sub_menu`.`menu_id`= 3) AND `user_access_menu`.`role_id` = $role_id 
          ";
          $menusub = $this->db->query($queryMenu)->result_array();
          ?>
            <?php foreach($menusub as $ms) : 
              if($ms['menu_id'] == $menuid){
                $urlsubmenu = $ms['url'];
                $getmenuid = $ms['menu_id'];
              }
            ?>
            <?php endforeach; ?>
        <?php if ($m['id'] > 0) :?>
          <div class="col-xl-4 col-md-6 mb-4">
            <div class="card shadow h-100 py-2">
                <div class="card-body text-center">
                    <div class="row  align-items-center">
                        <div class="col-md-12">
                          <img src="<?= base_url('assets/img/').$m['icon']; ?>"  class="img-thumbnail mb-4">
                        </div>
                        <div class="col-md-12">

                            <a class="nav-link pb-0 getid" data-idmenu="<?= $getmenuid?>" href="<?= base_url('block/home?id='.$m['id']); ?>"><h4 class="text-center"> <?= $m['menu']; ?></h5></a>

                        </div>
                        <div class="col-md-12">
                          <ul>
                            <?php foreach($roles as $r) : ?>
                            <li class="text-left"> <?= $r['role']; ?></li>
                            <?php endforeach; ?>
                          </ul>
                        </div>
                    </div>
                </div>
            </div>
          </div>
        <?php endif ; ?>

      <?php endforeach; ?>

  </div>
</div>
<!-- /.container-fluid -->



