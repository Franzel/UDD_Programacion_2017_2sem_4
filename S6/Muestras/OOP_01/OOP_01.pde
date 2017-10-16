/*
Programación Basada en Objetos
(Object Oriented Programing - OOP)
Francisco Zamorano
Junio 2017
 
Modificado de Sergio Majluf, Nov. 2106
https://github.com/sergiomajluf/Programacion/tree/master/S6/Para%20Mostrar/miTaxi
*/


Auto auto1, auto2, auto3, auto4;

void setup() {
  size(640, 480);
  auto1 = new Auto (100, 100, 50, color(255, 0, 0));
  auto2 = new Auto (200, 200, 100, color(0, 0, 255));
  auto3 = new Auto (300, 300, 50, color(255, 100, 0));
  auto4 = new Auto (400, 400, 50, color(255, 255, 0));
}

void draw() { 
  background(255);

  // llamamos a los metodos
  auto1.dibuja();
  auto2.dibuja();
  auto3.dibuja();
  auto4.dibuja();
  //podemos acceder a cada uno de los objetos y darle intrucciones distintas individiualmente
  if (mousePressed) {
    auto1.avanza();
  } else {
    auto2.avanza();
  }
}