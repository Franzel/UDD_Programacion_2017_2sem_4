// Lineas random

float r, g, b; //un shortcut para declarar variables del mismo tipo
float posX, posY;


void setup() {
  size(200, 600);
  background(0);
  smooth(); //activa el anti-alias, reduce pixelacion en diagonales y curvas
}

void draw() {
  r = random(255);
  g = random(255);
  b = random(255);

  posY= random(height); //esta es la clave para hacer las lineas horizontales

  strokeWeight(2);
  stroke(r, g, b);
  line(0, posY, width, posY); // usamos la misma variable en pto A y pto B
}