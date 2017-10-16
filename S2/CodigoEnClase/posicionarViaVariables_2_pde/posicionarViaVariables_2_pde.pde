/*
 Este sketch posiciona cuadrados en las esquinas
 y un circulo en el centro, independiente de
 el tamano de estos e independiente del tamano
 del canvas
*/

float rectSize = 30;
float r;
float g;
float b;

void setup() {
  size(600, 600);
  smooth();
  background(255, 0, 0);
}


void draw() {
  fill(255);
  ellipse(width/2, height/2, 100, 100);

  fill(0, 255, 0);
  rect(0, 0, rectSize, rectSize);

  fill(0, 0, 255);
  rect(width-rectSize, 0, rectSize, rectSize);

  fill(255, 255, 0);  
  rect(0, height-rectSize, rectSize, rectSize);

  fill(0, 255, 255);
  rect(width-rectSize, height-rectSize, rectSize, rectSize);
}