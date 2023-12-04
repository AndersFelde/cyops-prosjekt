<!DOCTYPE html>
<html lang="en">

<head>
    <!-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles.css" />
    <title>Інформація для цивільних у Києві</title>
</head>

<body>
    <?php
  // header('Content-Type: text/html; charset=utf-8');
  // Database connection details
  $servername = "127.0.0.1";
  $username = "root";
  $password = "change-me";
  $dbname = "internal";

  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  $conn->set_charset("latin1");

  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  // Query the database
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
            <h1>Інформація для цивільних у Києві</h1>
        </div>
        <form action="index.php" method="GET">
            <input type="text" name="search" placeholder="Search...">
            <button type="submit">Search</button>
        </form>
    </header>

    <section class="main-content">
        <div class="container">

            <?php
      // Display posts from the database
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
        echo '<p>No posts found</p>';
      }

      // Close the database connection
      $conn->close();
      ?>

        </div>
    </section>

    <footer>
        <div class="container">
            <a href="#">Увійдіть тут</a>
        </div>
    </footer>
</body>

</html>