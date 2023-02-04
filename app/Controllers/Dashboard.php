<?php

namespace App\Controllers;
use App\Models\Grafik_model;
use Config\Services;

class Dashboard extends BaseController
{
    public function index()
    {
        $m_grafik = new Grafik_model();
        $rs = $m_grafik->grafik_data_agama_json();
        $rs = $m_grafik->grafik_data_gender_json();
        $rs = $m_grafik->grafik_data_provinsi_json();
        $rs = $m_grafik->grafik_data_prodi_json();
        $rs = $m_grafik->grafik_data_angkatan_json();
        $data = [
            'location'     => 'dashboard',
            'rs' => $rs
        ];

        return view('dashboard', $data);
    }
}