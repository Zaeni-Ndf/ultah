<?php

namespace App\Controllers;
use Config\Services;
use App\Models\Grafik_model;

class Grafik_data_provinsi extends BaseController
{
    public function index()
    {
		$m_grafik = new Grafik_model();
		$rs = $m_grafik->grafik_data_provinsi_json();
        $data = [
            'location'     => 'grafik_data_provinsi',
			'rs' => $rs
        ];

        return view('grafik_data_provinsi', $data);
    }

    public function grafik_data_provinsi_json(){  
        $m_grafik        = new Grafik_model();
        $rs = $m_grafik->grafik_data_provinsi_json();
        
		//$data = array();
		$no = 1;
		
		foreach($rs as $r) {	
		$provinsi = $r->provinsi;  
		$jumlah = $r->jumlah;
		
			 $data[] = array(
				$provinsi, $jumlah
			 );
			 $no++;
		}

		$output = array(
			   "data" => $data
		  );
		echo json_encode($data);
	}


}