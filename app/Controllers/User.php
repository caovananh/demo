<?php 
namespace App\Controllers;

class User extends BaseController
{
    protected $validation;
    public $data = [];
    protected $db = null;
    public function __construct(){
		$this->db = \Config\Database::connect();
        $this->validation =  \Config\Services::validation();
        
    }
	public function index()
	{
        $userModel = new \App\Models\UserModel();
        // $builder = $this->db->table($userModel->table);
        // $query = $builder->get();
        //$this->data['user'] = $query->getResult();
        //print_r($user);

        if(isset($_POST['submit'])){
			//cofig validation
            $this->validation->setRules([
				'username' => 'required',
				'password' => 'required'
			],
                [   
                    'username' => [
                        'required' => 'Name is required!',
                    ],
                    'password' => [
                        'required' => 'password is required'
                    ]
                ]
            );
            if ($this->validation->withRequest($this->request)->run()){
                      $users =$userModel->check_login($_POST['username'],md5($_POST['password']))  ;
                    // echo '<pre>';
                    // print_r(count($users));
                    // echo '</pre>';die();
                   if(count($users) >0) {
                        setcookie('isLogin', 1, time() + (86400*365), "/");
                        header('location:'.base_url().'/product');die();
                   }else{
                    header('location:'.base_url().'/user');die();
                   }   
            }else{
                $this->data['validation'] = $this->validation->getErrors();
            }		     
		}
	
          return view('login',$this->data);
       
	}
}