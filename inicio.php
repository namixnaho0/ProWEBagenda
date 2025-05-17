<?php
/*************************************************************/
/* Archivo:  inicio.php
 * Objetivo: página de sesión iniciada
 * Autor:  BAOZ
 *************************************************************/
include_once("models\Usuario.php");
session_start();
$sErr = "";
$sNom = "";
$sTipo = "";
$oUsu = new Usuario();


if (isset($_SESSION["usuario"])) {
  $oUsu = $_SESSION["usuario"];
  $sNom = $oUsu->getNombre();
  $sTipo = $_SESSION["tipo"];
} else
  $sErr = "Debe estar firmado";

if ($sErr == "") {
  include_once("cabecera.html");
} else {
  header("Location: error.php?sErr=" . $sErr);
  exit();
}
?>
<div class= "layout">
<div>

<aside>
  <ul>

    <li><a href="inicio.php">Inicio</a></li>

    <?php
    if (isset($_SESSION["usuario"])) {
      echo '<li><a href="contactos.php">Contactos</a></li>';

      echo '<li><a href="logout.php">Cerrar Sesion</a></li>';
    }
    ?>
  </ul>
  </aside>
<?php include_once("aside.html"); ?>
</div>
<main>
  <h1>Bienvenido <?php echo $sNom; ?></h1>
  <h3>Eres tipo <?php echo $sTipo; ?></h2>
</main>
</div>

<?php
include_once("pie.html");
?>