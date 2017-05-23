<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

//crea un nuevo usuario
  public function crearUsuario($user)
  {
  	 $r = $this->db->insert('users', $user);
    return $r;
  }
}
