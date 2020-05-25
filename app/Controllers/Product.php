<?php 
namespace App\Controllers;
use App\Models\UserModel;
class Product extends BaseController
{
	public $data = [];
	protected $db = null;
	protected $builder;
	protected $validation;
	protected $pager;
	public function __construct(){
		$this->db = \Config\Database::connect();
		$this->builder= $this->db->table('nc_posts');
		$this->validation =  \Config\Services::validation();
		$this->pager = \Config\Services::pager();
		if(!isset($_COOKIE['isLogin']) || $_COOKIE['isLogin'] != 1) {
			echo 'dkm';die();
		}
    }
	public function index()
	{
		//$model = new UserModel();			
		$builder = $this->builder
						->select();
	
		//filer
		$id = isset($_GET['id']) ? $_GET['id'] : '';
		$name = isset($_GET['name']) ? $_GET['name'] : '';
		
        if($id){
            $builder->where('id',$id);
        }
        if($name){
            $builder->like('name', $name);
		}	
		//pagination
		$per_page =5;
		$this->data = [
			'users' => $model->paginate($per_page),
            'pager' => $model->pager->setPath('/demo/product')
        ];
		$check_offset = (isset($_GET['page']) ? $_GET['page'] : 1);
		$offset = is_numeric($check_offset) ? $check_offset : 1;
		$query = $builder->limit($per_page,($offset-1)*$per_page)->get();

		$this->data['list'] = $query->getResult();
		return view('product/index', $this->data );
	}
	/*
	public function add(){	
        if(isset($_POST['submit'])){	
			$this->validation->setRules([
				'name' => 'required|min_length[3]',
				'price' => 'required|numeric'
			],
			[ 
				'name' => [
					'required' => 'Name is required!',
				],
				'price' => [
					'required' => 'Price is required'
				],
				'price' => [
					'numeric' => 'Price must be a number'
				]
			]
		);


		if ($this->validation->withRequest($this->request)->run())
		{
			$data =[
				'status'=>$_POST['status'],
				'name' =>$_POST['name'],
				'price'=>$_POST['price'],
				'detail'=>$_POST['detail'],
				'description'=>$_POST['description'],
				'created' =>time(),
			]; 	
			echo '<pre>';
			$this->builder->insert($data);
			header('location:'.base_url().'/public');die();
		}
		else
		{
			$this->data['validation'] = $this->validation->getErrors();
		}	     
	}
        return view('product/add', $this->data);
        
	}

	//edit
	public function edit(){
		$id =isset($_GET['id']) ? $_GET['id'] : '';
        if(isset($_POST['submit'])){
			//cofig validation
            $this->validation->setRules([
				'name' => 'required|min_length[3]',
				'price' => 'required|numeric'
			],
			[   
				'name' => [
					'required' => 'Name is required!',
				],
				'price' => [
					'required' => 'Price is required'
				],
				'price' => [
					'numeric' => 'Price must be a number'
				]
			]
		);
		if ($this->validation->withRequest($this->request)->run()){
                $data =[
                    'status'=>$_POST['status'],
                    'name' =>$_POST['name'],
                    'price'=>$_POST['price'],
                    'detail'=>$_POST['detail'],
                    'description'=>$_POST['description'],
                    'created' =>time(),
				]; 
				
       		 	$this->builder->where('id', $id);
				$this->builder->update($data);
				//print_r($this->db->getlastquery());die();
				header('location:'.base_url().'/public');die();
		}else{
			$this->data['validation'] = $this->validation->getErrors();
		}		     
		}
		$this->builder->where('id', $id);
		$query =$this->builder->select()->get()->getResult();
		$this->data['update'] =$query;
        return view('product/update', $this->data);
        
	}


	public function delete(){
		$id =isset($_GET['id']) ? $_GET['id'] : '';
        $this->builder->where('id', $id);
		$this->builder->delete();
		//print_r($this->db->getlastquery());die();
	  header('location:'.base_url().'/public');die();
        
	}
	public function changeStatus(){
        $id =isset($_GET['id']) ? $_GET['id'] : '';
        $status =isset($_GET['status']) ? $_GET['status'] : '';
        if($id>0 && $status != ''){
            $status = ($status == 1 ) ? 0 : 1 ;
            $this->builder->where('id', $id);
            $data = array(
                'status' => $status
        );
            $this->builder->update( $data);
			header('location:'.base_url().'/public');die();
            
        }
    }
	//--------------------------------------------------------------------
	*/

}
