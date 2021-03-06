<?php
require_once 'core/init.php';

if(Session::exists('home')){
    echo '<p>'. Session::flash('home') .'</p>';
}

$user = new User();
if($user->isLoggedIn()){
?>
    <p>Hello <a href="profile.php?user=<?php echo escape($user->data()->username); ?>"><?php echo escape($user->data()->name); ?></a> </p>
    <ul>
        <li><a href="update.php">Update Details</a></li>
        <li><a href="changepassword.php">Change your password</a></li>
        <li><a href="logout.php">Log out</a></li>
    </ul>
<?php
    if($user->hasPermission('admin')){
        echo "<p>You are an admin</p>";
    }elseif ($user->hasPermission('moderator')){
        echo "<p>You are a moderator</p>";
    }
} else{
    echo "You need to <a href='login.php'>log in</a> or <a href='register.php'>register</a> to continue";
}