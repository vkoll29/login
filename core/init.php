<?php
/**
 * Created by PhpStorm.
 * User: vkoll29
 * Date: 03/08/17
 * Time: 4:45 PM
 */

session_start();

$GLOBALS['config'] = array(
    'mysql' => array(
        'host' => '127.0.0.1',
        'username' => 'root',
        'password' => '',
        'db' => 'login'
    ),
    'remember' => array(
        'cookie_name' => 'hash',
        'cookie_expiry' => '604800'
    ),
    'session' => array(
        'session_name' => 'user',
        'token_name' => 'token'
    )
);

spl_autoload_register(function($class){
    require_once 'classes/' .$class . '.php';
});

require_once 'functions/sanitize.php';
