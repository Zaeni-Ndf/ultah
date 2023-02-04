<body>
<?php $session = \Config\Services::session();?>
  <!-- ======= Header ======= -->
  <header id="header" class="header bg-light fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <span class="d-none d-lg-block">Demografi Mahasiswa</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->



        <li class="nav-item dropdown">

        </li><!-- End Messages Nav -->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="<?= base_url(''); ?>/assets/img/nadip.jpeg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">Muhamad Zaeni Nadip</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>Muhamad Zaeni Nadip</h6>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            

            <li>
              <a class="dropdown-item d-flex align-items-center" href="<?= base_url('home/logout');?>">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar bg-light">

    <ul class="sidebar-nav bg-light" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link <?php if ($location == 'dashboard') {
                              echo "";
                            } else {
                              echo "collapsed";
                            } ?>" href="<?= base_url('dashboard'); ?>">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link <?php if ($location == 'mahasiswa') {
                              echo "";
                            } else {
                              echo "collapsed";
                            } ?>" href="<?= base_url('mahasiswa'); ?>">
          <i class="bi bi-person"></i>
          <span>Data Mahasiswa</span>
        </a>
      </li>

      <li class="nav-item">
        <a class="nav-link <?php if ($location == 'grafik_gender') {
                              echo "";
                            } else {
                              echo "collapsed";
                            } ?>" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-bar-chart"></i><span>Grafik</span><i class="bi bi-chevron-down ms-auto"></i> </a>
        <ul id="charts-nav" class="nav-content <?php if ($location == 'grafik_gender') {
                                                  echo "";
                                                } else {
                                                  echo "collapse";
                                                } ?> " data-bs-parent="#sidebar-nav">
          <li> <a href="<?= base_url('grafik_gender'); ?>" <?php if ($location == 'grafik_gender') {
                                                              echo 'class="active"';
                                                            } ?>> <i class="bi bi-circle"></i><span>Berdasarkan Gender</span> </a>
          <li>
          <li> <a href="<?= base_url('grafik_agama'); ?>" <?php if ($location == 'grafik_agama') {
                                                              echo 'class="active"';
                                                            } ?>> <i class="bi bi-circle"></i><span>Berdasarkan Agama</span> </a>
         <li>
         <li> <a href="<?= base_url('grafik_provinsi'); ?>" <?php if ($location == 'grafik_provinsi') {
                                                              echo 'class="active"';
                                                            } ?>> <i class="bi bi-circle"></i><span>Berdasarkan Provinsi</span> </a>
         <li>
         <li> <a href="<?= base_url('grafik_prodi'); ?>" <?php if ($location == 'grafik_prodi') {
                                                              echo 'class="active"';
                                                            } ?>> <i class="bi bi-circle"></i><span>Berdasarkan Prodi</span> </a>
         <li>
          
        </ul>
      </li>

  </aside><!-- End Sidebar-->