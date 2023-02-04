<?php

namespace App\Controllers;
use Config\Services;
use App\Models\Grafik_model;

class Grafik_data_prodi extends BaseController
{
    public function index()
    {
		$m_grafik = new Grafik_model();
		$rs = $m_grafik->grafik_data_prodi_json();
        $data = [
            'location'     => 'grafik_data_prodi',
			'rs' => $rs
        ];

        return view('grafik_data_prodi', $data);
    }

    public function grafik_data_prodi_json(){  
        $m_grafik        = new Grafik_model();
        $rs = $m_grafik->grafik_data_prodi_json();
        
		//$data = array();
		$no = 1;
		
		foreach($rs as $r) {	
		$prodi = $r->prodi;  
		$jumlah = $r->jumlah;
		
			 $data[] = array(
				$prodi, $jumlah
			 );
			 $no++;
		}

		$output = array(
			   "data" => $data
		  );
		echo json_encode($data);
	}


}