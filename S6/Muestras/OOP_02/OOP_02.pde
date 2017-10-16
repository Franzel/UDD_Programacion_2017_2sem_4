/*
Programación Basada en Objetos
(Object Oriented Programing - OOP)
Francisco Zamorano
Junio 2017
 
Modificado de Sergio Majluf, Nov. 2106
https://github.com/sergiomajluf/Programacion/tree/master/S6/Para%20Mostrar/miTaxi
*/

int nAutos = 100;
Auto [] autos = new Auto[nAutos];


void setup() {
  size(640, 480);
  
  for (int i=0; i<nAutos; i++) {
    color miColor = color(random(255),random(255),random(255), 255);
    float posX = random(width);
    float posY = random(height);
    float carSize = random(10,100);
    float vel = random(1, 5);
    autos[i] = new Auto (posX, random(height), carSize, miColor, vel);
  }
}

void draw() { 
  background(255);

  // llamamos a los metodos
  for (int i=0; i<nAutos; i++) {
    autos[i].dibuja();
    autos[i].avanza();
  }
}