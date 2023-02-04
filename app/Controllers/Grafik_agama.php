<?php

namespace App\Controllers;
use Config\Services;
use App\Models\Grafik_model;

class Grafik_agama extends BaseController
{
    public function index()
    {
        $data = [
            'location'     => 'grafik_agama'
        ];

        return view('grafik_agama', $data);
    }

    public function grafik_agama_json(){  
        $m_grafik        = new Grafik_model();
        $rs = $m_grafik->grafik_agama_json();
        $data = array();
		$no = 1;
		
		foreach($rs as $r) {	
		$agama = $r->agama;  
		$jumlah = $r->jumlah;
		
			 $data[] = array(
				"agama" => $agama,
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