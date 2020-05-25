<?php namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;
 
class ProductModel extends Model
{
    function List(){
        $db = \Config\Database::connect();
        $builder= $db->table('posts');
        $builder->orderBy('id_posts','DESC')
        $query = $builder->get();
        return $query->getResult();
    }
}