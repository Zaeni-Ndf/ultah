<?php

namespace App\Controllers;
use Config\Services;

class Dashboard extends BaseController
{
    public function index()
    {
        return view('dashboard');
    }
}