<?php

namespace App\Controllers;
use Config\Services;
use App\Models\Grafik_model;

class Grafik_data_gender extends BaseController
{
    public function index()
    {
		$m_grafik = new Grafik_model();
		$rs = $m_grafik->grafik_data_gender_json();
        $data = [
            'location'     => 'grafik_data_gender',
			'rs' => $rs
        ];

        return view('grafik_data_gender', $data);
    }

    public function grafik_data_gender_json(){  
        $m_grafik        = new Grafik_model();
        $rs = $m_grafik->grafik_data_gender_json();
        
		//$data = array();
		$no = 1;
		
		foreach($rs as $r) {	
		$jenis_kelamin = $r->jenis_kelamin;  
		$jumlah = $r->jumlah;
		
			 $data[] = array(
				$jenis_kelamin, $jumlah
			 );
			 $no++;
		}

		$output = array(
			   "data" => $data
		  );
		echo json_encode($data);
	}


}