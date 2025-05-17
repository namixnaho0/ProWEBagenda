
<aside>
  <ul>

    <li><a href="index.php">Inicio</a></li>

    <?php
    if (isset($_SESSION["usuario"])) {
      echo '<li><a href="contactos.php">Contactos</a></li>';

      echo '<li><a href="logout.php">Cerrar Sesion</a></li>';
    }
    ?>
  </ul>
  </aside>

