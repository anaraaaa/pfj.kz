<?php
  require "../includes/config.php";

  if (isset($_POST['name'])) {
    $name = $_POST['name'];
    $fam = $_POST['fam'];
    $telephone = $_POST['telephone'];
    $city = $_POST['city'];
    $email = $_POST['email'];
    $bdate = $_POST['bdate'];
    $gender = $_POST['gender'];
    $wxp = $_POST['wxp'];
    $dolzhn = $_POST['dolzhn'];
    $zp = $_POST['zp'];
    $spec = $_POST['spec'];
    $lvl = $_POST['lvl'];
    $mainlang = $_POST['mainlang'];
    $othlang = $_POST['othlang'];


  $sql = "INSERT INTO `users_fj` ( `name`, `fam`, `telephone`, `city`, `email`, `bdate`, `gender`, `wxp`, `dolzhn`, `zp`, `spec`, `lvl`, `mainlang`, `othlang`) VALUES ('$name', '$fam', '$telephone', '$city', '$email', '$bdate', '$gender', '$wxp', '$dolzhn', '$zp', '$spec', '$lvl', '$mainlang', '$othlang')";
  mysqli_query($connection, $sql);

  }
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title><?php echo $config['title']; ?></title>

  <!-- Bootstrap Grid -->
  <link rel="stylesheet" type="text/css" href="/media/assets/bootstrap-grid-only/css/grid12.css">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">

  <!-- Custom -->
  <link rel="stylesheet" type="text/css" href="/media/css/style.css">
</head>
<body>

  <div id="wrapper">

    <?php include"../includes/header.php";?>

    <div id="content">
      <div class="container">
        <div class="row">
          <section class="content__left col-md-8">
            <div class="block">
              <a></a>
              <h2>Регистрация соискателя:</h2>
              <div class="block__content">
                <img src="">

                <div class="full-text">
              <form method="POST" action="">
              <p>Контактные данные</p>
              <p><input type="text" name="name" class="feedback_input" placeholder="Имя"></p>
              <p><input type="text" name="fam" class="feedback_input" placeholder="Фамилия" ></p>
              <p><input type="text" name="telephone" class="feedback_input" placeholder="Мобильный телефон" ></p>
              <p><input type="text" name="city" class="feedback_input" placeholder="Город проживания" ></p>
              <p><input type="email" name="email" class="feedback_input" placeholder="Email" ></p>
              <p>Основная информация</p>
              <p><input type="date" name="bdate" class="feedback_input" placeholder="Дата рождения" ></p>
              <p><input type="text" name="gender" class="feedback_input" placeholder="Пол" ></p>
              <p><input type="text" name="wxp" class="feedback_input" placeholder="Опыт работы" ></p>
              <p>Специальность</p>
              <p><input type="text" name="dolzhn" class="feedback_input" placeholder="Желаемая должность" ></p>
              <p><input type="text" name="zp" class="feedback_input" placeholder="Зарплата" ></p>
              <p><input type="text" name="spec" class="feedback_input" placeholder="Специализации" ></p>
              <p>Образование</p>
              <p><input type="text" name="lvl" class="feedback_input" placeholder="Уровень. Например:Среднее." ></p>
              <p>Владение языками</p>
              <p><input type="text" name="mainlang" class="feedback_input" placeholder="Родной язык" ></p>
              <p><input type="text" name="othlang" class="feedback_input" placeholder="Иностранные языки" ></p>
              <input type="submit" value="Сохранить" class="button-submit" style = "height: 22px; width: 171px;">
              </form>
                </div>
              </div>
            </div>

                </div>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>

    <?php include "../includes/footer.php"; ?>

  </div>

</body>
</html>