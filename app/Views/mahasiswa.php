<?= $this->include('header'); ?>
<?= $this->include('sidemenu'); ?>
<main id="main" class="main">

    <div class="pagetitle">
      <nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title"></h5>
              <p><a href="<?= base_url('mahasiswa/add')?>" class="btn btn-primary">
              <i class="bi bi-plus"></i> </a></p>
              <table id="example" class="display" style="width:100%;">
        <thead>
            <tr>
                <th>No</th>
                <th>NIM</th>
                <th>No. KTP</th>
                <th>Nama</th>
                <th>Provinsi</th>
                <th>Prodi</th>
                <th>Option</th>
            </tr>
        </thead>
        <tbody></tbody>        
      </table>
            </div>
          </div>
        </div>
      </div>
    </section>

  </main><!-- End #main -->
  <?= $this->include('footer'); ?>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
   <script>
  $(document).ready(function () {
    $('#example').DataTable({
        ajax: '<?php echo base_url("mahasiswa/data_mahasiswa_json") ?>'
    });
});
</script>