<?php

namespace App\Controllers;
use Config\Services;
use App\Models\Mahasiswa_model;

class Mahasiswa extends BaseController
{
    public function index()
    {
        $data = [
            'location'     => 'mahasiswa'
        ];

        return view('mahasiswa', $data);
    }

    public function data_mahasiswa_json(){  
        $m_mahasiswa        = new Mahasiswa_model();
        $rs = $m_mahasiswa->data_mahasiswa_json();
        $data = array();
		$no = 1;
		
		foreach($rs as $r) {	
		$nim = $r->nim;  
		$no_ktp= $r->no_ktp;
		$nama= $r->nama_lengkap;
		$provinsi= $r->provinsi;
		$prodi= $r->prodi;

        $onclick = "return confirm('Anda Yakin Ingin Menghapus Data Ini ?')";

		$btn = '<a  href="'.base_url().'/mahasiswa/edit/'.$nim.'" data-toggle="tooltip" 
                data-placement="top" title="" data-original-title="Edit">
                <i class="bi bi-pencil text-success" >Edit</i></a> ||
				<a href="'.base_url().'/mahasiswa/delete/'.$nim.'" data-toggle="tooltip" 
                data-placement="top" title="" data-original-title="Delete" 
                onclick="'.$onclick.'"><i class="bi bi-trash text-danger">Delete</i>
                </a>';

			 $data[] = array(
				$no,
                $nim,
                $no_ktp,
                $nama,
                $provinsi,
                $prodi,
				$btn
			 );
			 $no++;
		}

		$output = array(
			   "data" => $data
		  );
		echo json_encode($output);
	}

    public function add()
	{
        $m_mahasiswa       = new Mahasiswa_model();
		$data = [
			'location'    => 'mahasiswa',
			'opt_agama'   => $m_mahasiswa->opt_agama(),
			'opt_provinsi'   => $m_mahasiswa->opt_provinsi(),
			'opt_prodi'   => $m_mahasiswa->opt_prodi(),
		];
		return view('mahasiswa_add', $data);
	}

    public function pro_add()
	{
        $m_mahasiswa        = new Mahasiswa_model();
		$data = [
			'nim' => $this->request->getPost('nim'),
			'no_ktp' => $this->request->getPost('no_ktp'),
			'nama_lengkap' => $this->request->getPost('nama_lengkap'),
			'tempat_lahir' => $this->request->getPost('tempat_lahir'),
			'tgl_lahir' => $this->request->getPost('tgl_lahir'),
			'jenis_kelamin' => $this->request->getPost('jenis_kelamin'),
			'prodi' => $this->request->getPost('prodi'),
			'provinsi' => $this->request->getPost('provinsi'),
			'agama' => $this->request->getPost('agama'),
			'alamat_lengkap' => $this->request->getPost('alamat_lengkap'),
			'tgl_masuk' => $this->request->getPost('tgl_masuk')
		];

		$sqlinsert = $m_mahasiswa->pro_add($data);
        $session = \Config\Services::session();
		$session->setFlashdata('sukses', 'Data telah ditambah');
		return redirect()->to(base_url('mahasiswa'));
	}


	public function edit($nim)
	{
        $m_mahasiswa 		= new Mahasiswa_model();
		$mahasiswa = $m_mahasiswa->mahasiswa_update($nim);
		$data = [
			'location'    => 'mahasiswa',
			'mahasiswa'    => $mahasiswa,
			'opt_agama'   => $m_mahasiswa->opt_agama(),
			'opt_provinsi' => $m_mahasiswa->opt_provinsi(),
			'opt_prodi'   => $m_mahasiswa->opt_prodi(),
		];
		return view('mahasiswa_edit', $data);
	}

	public function pro_edit()
	{
        $m_mahasiswa        = new Mahasiswa_model();
		$data_update= [
			'nim' => $this->request->getPost('nim'),
			'no_ktp' => $this->request->getPost('no_ktp'),
			'nama_lengkap' => $this->request->getPost('nama_lengkap'),
			'tempat_lahir' => $this->request->getPost('tempat_lahir'),
			'tgl_lahir' => $this->request->getPost('tgl_lahir'),
			'jenis_kelamin' => $this->request->getPost('jenis_kelamin'),
			'prodi' => $this->request->getPost('prodi'),
			'provinsi' => $this->request->getPost('provinsi'),
			'agama' => $this->request->getPost('agama'),
			'alamat_lengkap' => $this->request->getPost('alamat_lengkap'),
			'tgl_masuk' => $this->request->getPost('tgl_masuk')
		];

		$sqlupdate = $m_mahasiswa->pro_update($data_update);
        $session = \Config\Services::session();
		$session->setFlashdata('sukses', 'Data telah diubah');
		return redirect()->to(base_url('mahasiswa'));
	}


	public function delete($nim)
	{
       
        $m_mahasiswa        = new Mahasiswa_model();
		$data              = [ 'nim' => $nim ];
		$delete = $m_mahasiswa->delete($data);
        $session = \Config\Services::session();
		$session->setFlashdata('sukses', 'Data Berhasil Dihapus');
		return redirect()->to(base_url('mahasiswa'));
	}

}