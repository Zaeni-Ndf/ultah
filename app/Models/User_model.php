<?php

namespace App\Models;

use CodeIgniter\Model;

class User_model extends Model
{
    protected $table              = 'tab_user';
    protected $primaryKey         = 'nim';

    // login
    public function login($username, $password)
    {
        return $this->asArray()
            ->where([
                'username' => $username,
                'password' => $password
            ])
            ->first();
    }

    public function log($data)
    {
        $builder = $this->db->table('tab_user');
        $builder->where('username', $data['username']);
        $builder->update($data);
    }
}
