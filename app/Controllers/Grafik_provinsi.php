<?php

namespace App\Controllers;
use Config\Services;
use App\Models\Grafik_model;

class Grafik_provinsi extends BaseController
{
    public function index()
    {
        $data = [
            'location'     => 'grafik_provinsi'
        ];

        return view('grafik_provinsi', $data);
    }

    public function grafik_provinsi_json(){  
        $m_grafik        = new Grafik_model();
        $rs = $m_grafik->grafik_provinsi_json();
        $data = array();
		$no = 1;
		
		foreach($rs as $r) {	
		$provinsi = $r->provinsi;  
		$jumlah = $r->jumlah;
		
			 $data[] = array(
				"provinsi" => $provinsi,
                "jumlah" => $jumlah
			 );
			 $no++;
		}

		$output = array(
			   "data" => $data
		  );
		echo json_encode($data);
	}


}