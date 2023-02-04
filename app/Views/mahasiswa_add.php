<?= $this->include('header'); ?>
<?= $this->include('sidemenu'); ?>
<main id="main" class="main">

  <div class="pagetitle">
    <h1>Data mahasiswa</h1>
    <nav>
  </div><!-- End Page Title -->

  <section class="section">
    <div class="row">
      <div class="col-lg-12">

        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Tambah Data mahasiswa</h5>

            <form class="form-horizontal" action="<?= base_url('mahasiswa/pro_add') ?>" method="POST" enctype="multipart/form-data">
              <?= csrf_field(); ?>     
              <table class="table table-striped" style="font-weight: bold;">
                <tr>
                  <td style="font-weight: bold;color: black;">NIM</td>
                  <td style="font-weight: bold;color: black;">:</td>
                  <td style="font-weight: bold;color: black;"><input type="number" name="nim" placeholder="NIM" class="form-control form-control-sm" required></td>
                </tr>
                <tr>
                  <td style="font-weight: bold;color: black;">No. KTP</td>
                  <td style="font-weight: bold;color: black;">:</td>
                  <td style="font-weight: bold;color: black;"><input type="number" name="no_ktp" placeholder="No. KTP" class="form-control form-control-sm" required></td>
                </tr>
                <tr>
                  <td style="font-weight: bold;color: black;">Nama Lengkap</td>
                  <td style="font-weight: bold;color: black;">:</td>
                  <td style="font-weight: bold;color: black;"><input type="text" name="nama_lengkap" placeholder="Nama Lengkap" class="form-control form-control-sm" required></td>
                </tr>                
                <tr>
                  <td style="font-weight: bold;color: black;">Tempat Lahir</td>
                  <td style="font-weight: bold;color: black;">:</td>
                  <td style="font-weight: bold;color: black;"><input type="text" name="tempat_lahir" placeholder="Tempat Lahir" class="form-control form-control-sm" required></td>
                </tr>                
                <tr>
                  <td style="font-weight: bold;color: black;">Tgl Lahir</td>
                  <td style="font-weight: bold;color: black;">:</td>
                  <td style="font-weight: bold;color: black;"><input type="date" name="tgl_lahir" placeholder="Tgl Lahir" class="form-control form-control-sm" required></td>
                </tr> 
                <tr>
                  <td style="font-weight: bold;color: black;">Tgl Masuk</td>
                  <td style="font-weight: bold;color: black;">:</td>
                  <td style="font-weight: bold;color: black;"><input type="date" name="tgl_masuk" placeholder="Tgl Masuk" class="form-control form-control-sm" required></td>
                </tr> 
                <tr>
                  <td style="font-weight: bold;color: black;width:20%;">Jenis Kelamin</td>
                  <td style="font-weight: bold;color: black;width:5%;">:</td>
                  <td colspan="2"><select name="jenis_kelamin" class="form-control form-control-sm" data-placeholder="jenis_kelamin" required>
                      <option value="0">--Pilih--</option>
                      <option value="Pria">Pria</option>
                      <option value="Wanita">Wanita</option>
                    </select></td>
                </tr>              
                <tr>
                  <td style="font-weight: bold;color: black;">Alamat Lengkap</td>
                  <td style="font-weight: bold;color: black;">:</td>
                  <td style="font-weight: bold;color: black;"><input type="text" name="alamat_lengkap" placeholder="Alamat Lengkap" class="form-control form-control-sm" required></td>
                </tr>
                <tr>
                  <td style="font-weight: bold;color: black;width:20%;">Agama</td>
                  <td style="font-weight: bold;color: black;width:5%;">:</td>
                  <td colspan="2"><select name="agama" class="form-control form-control-sm" data-placeholder="Agama" required>
                      <option value="0">--Pilih--</option>
                      <?php
                      foreach ($opt_agama as $row) {
                        echo "<option value=" . $row->id . ">" . $row->agama . "</option>";
                      }
                      ?>
                    </select></td>
                </tr>
                <tr>
                  <td style="font-weight: bold;color: black;width:20%;">Prodi</td>
                  <td style="font-weight: bold;color: black;width:5%;">:</td>
                  <td colspan="2"><select name="prodi" class="form-control form-control-sm" data-placeholder="Prodi" required>
                      <option value="0">--Pilih--</option>
                      <?php
                      foreach ($opt_prodi as $row) {
                        echo "<option value=" . $row->id . ">" . $row->prodi . "</option>";
                      }
                      ?>
                    </select></td>
                </tr>
                <tr>
                  <td style="font-weight: bold;color: black;width:20%;">Provinsi</td>
                  <td style="font-weight: bold;color: black;width:5%;">:</td>
                  <td colspan="2"><select name="provinsi" class="form-control form-control-sm" data-placeholder="provinsi" required>
                      <option value="0">--Pilih--</option>
                      <?php
                      foreach ($opt_provinsi as $row) {
                        echo "<option value=" . $row->id . ">" . $row->provinsi . "</option>";
                      }
                      ?>
                    </select></td>
                </tr>
              </table>
         
                            
              
              <div class="text-right">
                <button type="button" class="btn btn-danger btn-rounded pull-right" onClick="javascript:history.go(-1)">
                  <i class="far fa-times-circle fa-lg"></i><b> Back</b>
                </button>
                <button type="submit" class="btn btn-warning btn-rounded pull-right">
                  <i class="far far fa-paper-plane fa-lg"></i><b> Submit</b>
                </button>
              </div>
              <br>
            </form>

          </div>
        </div>
      </div>
    </div>
  </section>

</main><!-- End #main -->
<?= $this->include('footer'); ?>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css" rel="stylesheet">
<script>
  $(document).ready(function() {
    $('#example').DataTable({
      ajax: '<?php echo base_url("mahasiswa/data_mahasiswa_json") ?>'
    });
  });
</script>