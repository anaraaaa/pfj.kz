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

<header id="header">
  <div class="header__top">
    <div class="container">
      <div class="header__top__logo">
        <h1><?php echo $config['title']; ?></h1>
      </div>
      
  <?php if( isset($_SESSION['logged_user']) ) : ?>
  Привет: <?php echo $_SESSION['logged_user']->login; ?><hr>

      <nav class="header__top__menu">
        <ul>
          <li><a href="/">Главная</a></li>
          <li><a href="/pages/find_job.php">Соискателю</a></li>
          <li><a href="/pages/take_job.php">Работодателю</a></li>
	        <li><a href="/pages/contacts.php">Контакты</a></li>
          <li><a href="/logout.php">Выйти</a></li>
          <?php else : ?>
          <li><a href="/signup.php" >Регистрация</a></li>
          <li><a href="/login.php"  >Авторизация</a></li>  
          <?php endif; ?>
        </ul>
      </nav>
    </div>
  </div>

<?php
  $categories=mysqli_query($connection, "SELECT * FROM `articles_categories`");
?>
  <div class="header__bottom">
    <div class="container">
      <nav>
        <ul>
          <?php
            while($cat=mysqli_fetch_assoc($categories))
            {
              ?>
              <li><a href="/article_cat.php?articles_categories=<?php echo $cat['id']; ?>"><?php 
              echo $cat['title']; ?></a></li>  
              <?php
            }
          ?>
        </ul>
      </nav>
    </div>
  </div>
</header>
