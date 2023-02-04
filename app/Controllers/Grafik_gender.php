<?php

namespace App\Controllers;
use Config\Services;
use App\Models\Grafik_model;

class Grafik_gender extends BaseController
{
    public function index()
    {
        $data = [
            'location'     => 'grafik_gender'
        ];

        return view('grafik_gender', $data);
    }

    public function grafik_gender_json(){  
        $m_grafik        = new Grafik_model();
        $rs = $m_grafik->grafik_gender_json();
        $data = array();
		$no = 1;
		
		foreach($rs as $r) {	
		$jenis_kelamin = $r->jenis_kelamin;  
		$jumlah = $r->jumlah;
		
			 $data[] = array(
				"jenis_kelamin" => $jenis_kelamin,
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