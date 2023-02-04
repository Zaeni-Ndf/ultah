<?php

namespace App\Models;

use CodeIgniter\Model;

class Grafik_model extends Model
{

	public function grafik_gender_json(){ 
		$query = $this->db->query("select jenis_kelamin,count(nim) as jumlah from tab_mahasiswa group by jenis_kelamin");
	    return $query->getResult();
	}

	public function grafik_data_gender_json(){ 
		$query = $this->db->query("select jenis_kelamin,count(nim) as jumlah from tab_mahasiswa group by jenis_kelamin");
	    return $query->getResult();
	}

	public function grafik_agama_json(){ 
		$query = $this->db->query("select b.agama, count(a.agama) as jumlah from tab_mahasiswa as a
		left join tab_agama as b on a.agama = b.id GROUP BY agama");
	    return $query->getResult();
	}
	
	public function grafik_data_agama_json(){ 
		$query = $this->db->query("select b.agama, count(a.agama) as jumlah from tab_mahasiswa as a
		left join tab_agama as b on a.agama = b.id GROUP BY agama");
	    return $query->getResult();
	}

	public function grafik_provinsi_json(){ 
		$query = $this->db->query("select c.provinsi, count(a.provinsi) as jumlah from tab_mahasiswa as a
		left join tab_provinsi as c on a.provinsi = c.id GROUP BY provinsi");
	    return $query->getResult();
	}

	public function grafik_data_provinsi_json(){ 
		$query = $this->db->query("select c.provinsi, count(a.provinsi) as jumlah from tab_mahasiswa as a
		left join tab_provinsi as c on a.provinsi = c.id GROUP BY provinsi");
	    return $query->getResult();
	}

	public function grafik_prodi_json(){ 
		$query = $this->db->query("select d.prodi, count(a.prodi) as jumlah from tab_mahasiswa as a
		left join tab_prodi as d on a.prodi = d.id GROUP BY prodi");
	    return $query->getResult();
	}

	public function grafik_data_prodi_json(){ 
		$query = $this->db->query("select d.prodi, count(a.prodi) as jumlah from tab_mahasiswa as a
		left join tab_prodi as d on a.prodi = d.id GROUP BY prodi");
	    return $query->getResult();
	}

	public function grafik_angkatan_json(){ 
		$query = $this->db->query("select tgl_masuk,count(nim) as jumlah from tab_mahasiswa group by tgl_masuk");
	    return $query->getResult();
	}

	public function grafik_data_angkatan_json(){ 
		$query = $this->db->query("select tgl_masuk,count(nim) as jumlah from tab_mahasiswa group by tgl_masuk");
	    return $query->getResult();
	}

};