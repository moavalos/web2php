<h1>Conociendo principios y autores del desarrollo de software</h1>

<div>Para ver el código refactorizado, acceda al archivo oca.php.</div>
<div>A su vez puede visualizar el juego de la oca orientado a consola en oca_por_consola.php ( \n en vez de br)</div>
<p>
    Recuere que el código no posee test, sólo para facilitar el dictado de la clase pero,
    dicha metodología de desarrollo lo recomienda fuertemente
    para realizar sucesivos cambios garantizando su funcionanamiento
</p>

<h1>Juego de la Oca reducido: reglamento</h1>
<?php

for ($i = 1; $i <= 20; $i++) {
    if ($i == 6) {
        echo "<div>El puente: mueve al espacio 12</div>";
    } elseif ($i % 6 == 0) {
        echo "<div>Mueve dos espacios hacia adelante</div>";
    } else {
        echo "<div>Estás en la casilla $i</div>";
    }
}
?>