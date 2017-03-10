<?php
//
//class Session{
//
//    public static function exists($name){
//        $name = trim($name);
//        return (isset($_SESSION[$name][0])) ? true : false;
//    }
//
//    public static function put($name, $value){
//        return $_SESSION[$name] = $value;
//    }
//
//    public static function get($name){
//        return $_SESSION[$name];
//    }
//
//    public static function delete($name){
//        if(self::exists($name)){
//            unset($_SESSION[$name]);
//        }
//    }
//
//}