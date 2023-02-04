<?= $this->include('header'); ?>
<?= $this->include('sidemenu'); ?>
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Berdasarkan Prodi</h1>
      <nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
                
<div id="chartdiv"></div>
            
            </div>
          </div>
        </div>
      </div>
    </section>

  </main><!-- End #main -->
  <?= $this->include('footer'); ?>
  <script src="//www.amcharts.com/lib/4/core.js"></script>
<script src="//www.amcharts.com/lib/4/charts.js"></script>


<style>
#chartdiv {
  width: 100%;
  height: 500px;
}
</style>
<script>
// Create chart instance in one go
var chart = am4core.createFromConfig({
  // Create pie series
  "series": [{
    "type": "PieSeries",
    "dataFields": {
      "value": "jumlah",
      "category": "prodi"
    }
  }],

  // Add data
  
  "data":  <?php echo file_get_contents(base_url('grafik_prodi/grafik_prodi_json')); ?>,

  // And, for a good measure, let's add a legend
  "legend": {}

}, "chartdiv", am4charts.PieChart);
</script>
