<?php
  require "includes/config.php";

$data = $_POST;
if( isset($data['do_signup']) )
{
	$errors = array();
	if( trim($data['login']) == '' )
	{
		$errors[] = 'Введите ваш логин!';
	}

	if( trim($data['email']) == '' )
	{
		$errors[] = 'Введите ваш Email!';
	}

	if( $data['password'] == '' )
	{
		$errors[] = 'Введите ваш пароль!';
	}

	if( $data['password_2'] != $data['password'] )
	{
		$errors[] = 'Повторный пароль введён не верно!';
	}

	if( R::count('user', "login = ?", array($data['login'])) > 0 )
	{
		$errors[] = 'Пользователь с таким логином уже существует!';
	}

	if( R::count('user', "email = ?", array($data['email'])) > 0 )
	{
		$errors[] = 'Пользоваетль с таким Email уже существует!';
	}

	if( empty($errors) )
	{
		$user = R::dispense('user');
		$user->login = $data['login'];
		$user->email = $data['email'];
		$user->password = password_hash($data['password'], PASSWORD_DEFAULT);
		R::store($user);
		header("Location: /login.php");
	} else
	{
		echo '<div style="color: red;">'.array_shift($errors).'</div><hr>';
	}
}
?>

<form action="/signup.php" method="POST">

<p>
 <p><strong>Ваш логин</strong></p>
 <input type="text" name="login" value="<?php echo @$data['login']; ?>">
</p>

<p>
 <p><strong>Ваш Email</strong></p>
 <input type="email" name="email" value="<?php echo @$data['email']; ?>">
</p>

<p>
 <p><strong>Ваш пароль</strong></p>
 <input type="password" name="password" value="<?php echo @$data['password']; ?>">
</p>

<p>
 <p><strong>Введите ваш пароль еще раз</strong></p>
 <input type="password" name="password_2" value="<?php echo @$data['password_2']; ?>">
</p>

<p>
 <button type="submit" name="do_signup" style = "height: 21px; width: 173px;">Зарегистрироваться</button>
</p>

</form>