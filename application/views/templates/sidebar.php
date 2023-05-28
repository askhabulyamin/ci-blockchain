
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('user'); ?>">
        <div class="sidebar-brand-icon">
        <i class="fas fa-project-diagram"></i>
        </div>
        <div class="sidebar-brand-text mx-3">(BIM) System</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider">
      
      <!-- QUERY MENU -->
      <?php 
      $role_id = $this->session->userdata('role_id');
      $queryMenu = "SELECT `user_menu`.`id`,`menu` 
                      FROM `user_menu` JOIN `user_access_menu`
                        ON `user_menu`.`id` = `user_access_menu`.`menu_id`
                     WHERE `user_access_menu`.`role_id` = $role_id
                    ORDER BY `user_access_menu`.`menu_id` ASC 
      ";
      $menu = $this->db->query($queryMenu)->result_array();

      $queryMenu2 = "SELECT `user_menu`.`id`,`user_menu`.`menu`, `user_menu`.`icon`, `user_sub_menu`.`title`, `user_sub_menu`.`url`
            FROM `user_menu` 
          LEFT  JOIN `user_access_menu` ON `user_menu`.`id` = `user_access_menu`.`menu_id`
          LEFT JOIN `user_sub_menu` ON `user_access_menu`.`menu_id` = `user_sub_menu`.`menu_id`
          WHERE NOT (`user_menu`.`id`= 0 OR `user_menu`.`id`= 1 OR `user_menu`.`id`= 2 OR `user_menu`.`id`= 3) AND `user_access_menu`.`role_id` = $role_id 
          GROUP BY `user_access_menu`.`menu_id` ASC 
      ";
      $menu2 = $this->db->query($queryMenu)->result_array();

      ?>
      <?php foreach($menu2 as $m) : ?>
        <?php 
          $role = $m['id'];
          $querySubMenu = "SELECT * 
                              FROM `user_role`
                              LEFT  JOIN `user_access_menu` ON `user_role`.`id` = `user_access_menu`.`role_id`
                              WHERE `user_access_menu`.menu_id = $role
          ";
          $roles = $this->db->query($querySubMenu)->result_array(); 
        ?>
      <?php endforeach; ?>

      <!-- LOOPING MENU -->

      <li class="nav-item active">
          <a class="nav-link" href="<?= base_url('dashboard'); ?>">
              <i class="fas fa-fw fa-tachometer-alt"></i>
              <span>Dashboard</span></a>
      </li>
      <!-- <hr class="sidebar-divider"> -->

      <?php foreach($menu as $m) : ?>
        <?php if ($m['id'] >0) :?>
        <div class="sidebar-heading">
            <?= $m['menu']; ?>
        </div>
        <?php endif; ?>

      <!-- SIAPKAN SUB-MENU SESUAI MENU -->
        <?php 
        $menuId = $m['id'];
        $querySubMenu = "SELECT * 
                            FROM `user_sub_menu`
                            WHERE NOT Id = 1 AND menu_id = $menuId
                            AND `is_active` = 1 
                              
        ";
        $queryMenu = "SELECT *FROM `user_sub_menu` 
                LEFT JOIN `user_menu` ON `user_sub_menu`.`menu_id` = `user_menu`.`id`
                LEFT  JOIN `user_access_menu` ON `user_menu`.`id` = `user_access_menu`.`menu_id`
                LEFT JOIN `user_role` ON `user_access_menu`.`role_id` = `user_role`.`id`
                WHERE NOT (`user_sub_menu`.`menu_id`= 1 OR `user_sub_menu`.`menu_id`= 2 
                OR `user_sub_menu`.`menu_id`= 3) AND `user_access_menu`.`role_id` = $role_id 
        ";
        $subMenu = $this->db->query($querySubMenu)->result_array(); 
        ?>  
        <?php foreach ($subMenu as $sm) : ?>
          <!-- Nav Item -->
          <?php if ($title == $sm['title']) : ?>
            <li class="nav-item active">
              <?php else : ?>
                <li class="nav-item">
              <?php endif; ?>
                <?php if ($menuId > 3) : ?>
                <a class="nav-link pb-0" href="<?= base_url($sm['url'].'?id='.$sm['id']); ?>">
              <?php else : ?>
                <a class="nav-link pb-0" href="<?= base_url($sm['url']); ?>">
                <?php endif; ?>

              <i class="<?= $sm['icon']; ?>"></i>
              <span><?= $sm['title']; ?></span></a>
          </li>
        <?php endforeach; ?>

      <!-- Divider -->
      <hr class="sidebar-divider mt-3">
      
      <?php endforeach; ?>
 
      <!-- Nav Item - logout -->
      <li class="nav-item">
        <a class="nav-link" href="" data-toggle="modal" data-target="#logoutModal">
          <i class="fas fa-fw fa-sign-out-alt"></i>
          <span>Logout</span>
        </a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar