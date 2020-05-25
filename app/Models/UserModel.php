<?php
namespace App\Models;
use CodeIgniter\Model;

class UserModel extends Model {
  
    var $table = 'nc_user';
    public function check_login($name,$password){
        $db = \Config\Database::connect();
        $builder =$db->table('nc_user');
        $query =$builder-> where('name', $name)
                          ->where('password', $password);
        return $query->get()->getResult();
    }

}