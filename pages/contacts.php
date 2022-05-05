<?php
  require "../includes/config.php";
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
              <h2>Контакты</h2>
              <div class="block__content">
                <img src="/static/images/cont.jpg ?>" style="max-width:100%;">

                <div class="full-text">
              
              <a href="http://polytech.kz"><h2>Посетите официальный сайт нашего колледжа</h2></a>
              


<h2>Адрес электронной почты:</h2>
<p>info@polytech.kz</p>

<h2>Номер телефона:</h2>
<p>8 (7172) 50 14 81</p>


                </div>
              </div>
            </div>


          </section>
          <section class="content__right col-md-4">
            <div class="block">
              <h3>Мы знаем где Вы сейчас находитесь</h3>
              <div class="block__content">
                <script type="text/javascript" src="//ra.revolvermaps.com/0/0/6.js?i=02op3nb0crr&amp;m=7&amp;s=320&amp;c=e63100&amp;cr1=ffffff&amp;f=arial&amp;l=0&amp;bv=90&amp;lx=-420&amp;ly=420&amp;hi=20&amp;he=7&amp;hc=a8ddff&amp;rs=80" async="async"></script>
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