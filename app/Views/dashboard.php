<?= $this->include('header'); ?>
<?= $this->include('sidemenu'); ?>
<?php
$conn = mysqli_connect("localhost", "root", "", "db_nadip");
$result = mysqli_query($conn, "select count(nim) FROM tab_mahasiswa");
$row = mysqli_fetch_array($result);
$mhs = $row[0];

$result_prodi = mysqli_query($conn, "select count(id) FROM tab_prodi");
$row_prodi = mysqli_fetch_array($result_prodi);
$mhs_prodi = $row_prodi[0];

$result_agama = mysqli_query($conn, "select count(id) FROM tab_agama");
$row_agama = mysqli_fetch_array($result_agama);
$mhs_agama = $row_agama[0];

$result_provinsi = mysqli_query($conn, "select count(id) FROM tab_provinsi");
$row_provinsi = mysqli_fetch_array($result_provinsi);
$mhs_provinsi = $row_provinsi[0];


?>
<main id="main" class="main">

  <div class="pagetitle">
    <h1>Dashboard</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
        <li class="breadcrumb-item active">Dashboard</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section dashboard">
    <div class="row">

      <!-- Left side columns -->
      <div class="col-lg-8">
        <div class="row">

          <div class="col-xxl-4 col-md-6">
            <div class="card info-card bg-warning">

              <div class="filter">
                <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                <li class="dropdown-header text-start">
              </div>

              <div class="card-body">
                <h5 class="card-title">TOTAL MAHASISWA</h5>

                <div class="d-flex align-items-center">
                  <div class=" rounded-circle d-flex align-items-center justify-content-center">
                  </div>
                  <div class="ps-3">
                    <h6 class="text-light">
                      <?= $mhs ?>
                    </h6>

                  </div>
                </div>
              </div>

            </div>
          </div>

          <div class="col-xxl-4 col-md-6">
            <div class="card info-card bg-warning">

              <div class="filter">
                <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                <li class="dropdown-header text-start">
              </div>

              <div class="card-body">
                <h5 class="card-title">PROGRAM STUDI</h5>

                <div class="d-flex align-items-center">
                  <div class="rounded-circle d-flext align-items-center justify-content-center">
                  </div>
                  <div class="ps-3 ">
                    <h6 class="text-light"><?= $mhs_prodi ?></h6>

                  </div>
                </div>
              </div>

            </div>
          </div>

        </div>
      </div>

    </div><!-- End sidebar recent posts-->

    </div>
    </div><!-- End News & Updates -->

    </div><!-- End Right side columns -->

    </div>
  </section>

</main><!-- End #main -->


<?= $this->include('footer'); ?>