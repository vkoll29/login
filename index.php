<?php
require_once 'core/init.php';

if(Session::exists('home')){
    echo '<p>'. Session::flash('home') .'</p>';
}

$user = new User();
if($user->isLoggedIn()){
?>
    <p>Hello <a href="#"><?php echo escape($user->data()->name); ?></a> </p>
    <ul>
        <li><a href="update.php">Update Details</a></li>
        <li><a href="changepassword.php">Change your password</a></li>
        <li><a href="logout.php">Log out</a></li>
    </ul>
<?php
} else{
    echo "You need to <a href='login.php'>log in</a> or <a href='register.php'>register</a> to continue";
}