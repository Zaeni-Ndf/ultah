<?php

namespace App\Controllers;
use Config\Services;
use App\Models\Grafik_model;

class Grafik_data_agama extends BaseController
{
    public function index()
    {
		$m_grafik = new Grafik_model();
		$rs = $m_grafik->grafik_data_agama_json();
        $data = [
            'location'     => 'grafik_data_agama',
			'rs' => $rs
        ];

        return view('grafik_data_agama', $data);
    }

    public function grafik_data_agama_json(){  
        $m_grafik        = new Grafik_model();
        $rs = $m_grafik->grafik_data_agama_json();
        
		//$data = array();
		$no = 1;
		
		foreach($rs as $r) {	
		$agama = $r->agama;  
		$jumlah = $r->jumlah;
		
			 $data[] = array(
				$agama, $jumlah
			 );
			 $no++;
		}

		$output = array(
			   "data" => $data
		  );
		echo json_encode($data);
	}


}