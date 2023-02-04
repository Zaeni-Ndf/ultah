<?php

namespace App\Models;

use CodeIgniter\Model;

class Mahasiswa_model extends Model
{
    protected $table              = 'tab_mahasiswa';
    protected $primaryKey         = 'nim';

    public function data_mahasiswa_json(){ 
		$query = $this->db->query("select a.nim,a.no_ktp,a.nama_lengkap,a.tempat_lahir,
		a.tgl_lahir,a.jenis_kelamin,b.prodi,c.provinsi,
		d.agama,a.alamat_lengkap,a.tgl_masuk from tab_mahasiswa as a 
		left join tab_prodi as b on a.prodi = b.id
		left join tab_provinsi as c on a.provinsi = c.id
		left join tab_agama as d on a.agama = d.id");
	    return $query->getResult();
	}


	public function pro_add($data)
	{
		$builder = $this->db->table('tab_mahasiswa');
		$builder->insert($data);
	}

	public function mahasiswa_update($nim)
	{
		$query = $this->db->query("select * from tab_mahasiswa where nim = '$nim' ");
		return $query->getResult();
	}

	public function pro_update($data_update)
	{
		$builder = $this->db->table('tab_mahasiswa');
		$builder->where('nim', $data_update['nim']);
		$builder->update($data_update);
	}

	public function opt_agama()
	{
		$query = $this->db->query("select * from tab_agama");
		return $query->getResult();
	}

	public function opt_prodi()
	{
		$query = $this->db->query("select * from tab_prodi");
		return $query->getResult();
	}

	public function opt_provinsi()
	{
		$query = $this->db->query("select * from tab_provinsi");
		return $query->getResult();
	}
   
}
