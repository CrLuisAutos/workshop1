<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	
	public function index()
	{
		$this->load->view('index');
	}

	//Agrega un nuevo usuario a la base de datos
	public function crearUsuario()
	{
		$firstname= $this->input->post('firstname');
		$lastname= $this->input->post('lastname');
		$password= $this->input->post('password');
		$username= $this->input->post('username');
		$usuario = array('firstname' => $firstname, 'lastname' => $lastname,'password' => $password, 'username'=>$username);
		 	$r=$this->User_model->crearUsuario($usuario);
		 	if(sizeof($r)>0){
		 		echo "Usuario creado";
		 		}
		 	else{
		 		echo $r[0];
			}
		
	}
}
