<?php
require_once 'core/init.php';

$user = DB::getInstance()->delete('users', 3);
