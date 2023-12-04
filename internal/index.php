<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Встановлення налаштувань для відображення на різних пристроях -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Підключення стилів зовнішнього вигляду -->
    <link rel="stylesheet" href="styles.css" />
    <!-- Заголовок сторінки -->
    <title>Інформація для цивільних у Києві</title>
</head>

<body>
    <?php
      // Деталі підключення до бази даних
      $servername = "127.0.0.1";
      $username = "root";
      $password = "change-me";
      $dbname = "internal";

      // Створення з'єднання з базою даних
      $conn = new mysqli($servername, $username, $password, $dbname);
      $conn->set_charset("latin1");

      // Перевірка з'єднання
      if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }

      // Запит до бази даних
      if (isset($_GET["search"])) {
        $search = $_GET["search"];
        $sql = "SELECT title, body FROM posts WHERE title LIKE '%$search%' OR body LIKE '%$search%'";
        $result = $conn->query($sql);
      } else {
        $sql = "SELECT title, body FROM posts";
        $result = $conn->query($sql);
      }
    ?>
    <header>
        <div class="container">
            <!-- Заголовок сайту -->
            <h1>Інформація для цивільних у Києві</h1>
        </div>
        <!-- Форма для пошуку -->
        <form action="index.php" method="GET">
            <input type="text" name="search" placeholder="Пошук...">
            <button type="submit">Пошук</button>
        </form>
    </header>

    <section class="main-content">
        <div class="container">

            <?php
              // Відображення постів з бази даних
              if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                  echo '<article class="blog-post">';
                  echo '<h2 class="post-title">' . $row["title"] . '</h2>';
                  echo '<div class="post-content">';
                  echo '<p>' . $row['body'] . '</p>';
                  echo '</div>';
                  echo '</article>';
                }
              } else {
                echo '<p>Постів не знайдено</p>';
              }

              // Закриття з'єднання з базою даних
              $conn->close();
            ?>

        </div>
    </section>

    <footer>
        <div class="container">
            <!-- Посилання на вхід -->
            <a href="#">Увійдіть тут</a>
        </div>
    </footer>
</body>

</html>