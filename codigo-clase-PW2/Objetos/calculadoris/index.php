<?php

/*
 * Ejercicio 17: Calcula Doris - No olvidemos imprimir el resultado final!
Crear los objetos Operando, Sumar, Restar. Todos deben responder al método
resolverEcuacion() de modo tal de poder escribir:
$resultado = new Sumar(
new Restar( new Operando(5), new Operando(3)) ,
new Sumar( new Operando(3), new Operando(4))
).resolverEcuacion();
y resultado debe ser 9. Crear ahora el objeto Multiplicar, agregarlo a la ecuación y
multiplicando todo por 2, ver que sucede ¿Tuvimos que modificar algo de lo existente?
 */
include_once ("Sumar.php");
include_once ("Restar.php");
include_once ("Operando.php");
include_once ("Multiplicar.php");
include_once ("PotenciaCuadrada.php");

$ecuacion = new PotenciaCuadrada(new Multiplicar(
        new Sumar(
            new Restar( new Operando(5), new Operando(3)) ,
            new Sumar( new Operando(3), new Operando(4))
        ),
        new Restar( new Operando(5), new Operando(4))));


echo "Resolviendo: ". $ecuacion->mostrate() . "<br>";
echo "Resultado:" . $ecuacion->resolverEcuacion();

/*
 * Ejercicio 18: Pacman come tuti
Crear los objetos packman, fantasma , píldora y fantasma comestible.
Packman debe responder al método: chocaContra( elemento ) y lanzar una excepción si se
queda sin vidas. Dicha Excepcion debe llamarse FinPartida, y debe indicar la cantidad de
puntos obtenidos.
Por defecto packman comienza con 3 vidas y cero puntos.
Si packman choca un fantasma, resta una vida
Si packman choca un fantasma comestible, suma 100 puntos
Si packman choca una pildora, suma 10 puntos
Si packman se queda sin vidas, finaliza la partida
Imprimir en pantalla los puntos obtenidos (Ej: Partida activa - 600 puntos - 5 vidas)
Ejemplo clarificador (se supone):

$partida = new Partida()
$packman = new Packman($puntaje);
$pildora = new Pildora();
$fantasma = new Fantasma();
$fantasmaComestible = new FantasmaComestible();
$packman.chocaContra($fantasmaComestible);
$partida->mostrarPuntaje();
$packman.chocaContra($fantasmaComestible);
$packman.chocaContra($fantasmaComestible);
$partida->mostrarPuntaje();
$packman.chocaContra($pildora);
$partida->mostrarPuntaje();
$packman.chocaContra($pildora);
$packman.chocaContra($pildora);
$partida->mostrarPuntaje();
$packman.chocaContra($fantasma);
$partida->mostrarPuntaje();
$packman.chocaContra($fantasma);
$packman.chocaContra($fantasma);
$partida->mostrarPuntaje();
 */

