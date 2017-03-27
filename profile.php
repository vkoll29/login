<?php
require_once 'core/init.php';
if(!$username = Input::get('user')){
    Redirect::to('index.php');
}else{
    $user = new User($username);
    if(!$user->exists()){
        Redirect::to(404);
    }else{
        $data = $user->data();
    }
    ?>
    <div class="details">
        <h2>Your Details</h2>
        <h4>Username: <?php echo escape($data->username); ?></h4>
        <h3>Full name: <?php echo escape($data->name); ?></h3>
    </div>

<?php
}