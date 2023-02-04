<?php

namespace App\Controllers;
use Config\Services;
use App\Models\Grafik_model;

class Grafik_data_angkatan extends BaseController
{
    public function index()
    {
		$m_grafik = new Grafik_model();
		$rs = $m_grafik->grafik_data_angkatan_json();
        $data = [
            'location'     => 'grafik_data_angkatan',
			'rs' => $rs
        ];

        return view('grafik_data_angkatan', $data);
    }

    public function grafik_data_angkatan_json(){  
        $m_grafik        = new Grafik_model();
        $rs = $m_grafik->grafik_data_angkatan_json();
        
		//$data = array();
		$no = 1;
		
		foreach($rs as $r) {	
		$tgl_masuk = $r->tgl_masuk;  
		$jumlah = $r->jumlah;
		
			 $data[] = array(
				$tgl_masuk, $jumlah
			 );
			 $no++;
		}

		$output = array(
			   "data" => $data
		  );
		echo json_encode($data);
	}


}