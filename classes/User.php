<?php

class User{
    private $_db;

    public function __construct(){
        $this->_db = DB::getInstance();
    }

    public function create($fields = array()){
        if(!$this->_db->insert('users', $fields)){
            throw new Exception('There was a problem in creating your account.');
        }

    }
}