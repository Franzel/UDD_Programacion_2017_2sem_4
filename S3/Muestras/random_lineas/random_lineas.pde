// Lineas random

float r, g, b; //un shortcut para declarar variables del mismo tipo


void setup() {
  size(200, 600);
  background(0);
}

void draw() {
  r = random(255);
  g = random(255);
  b = random(255);

  strokeWeight(2);
  stroke(r, g, b);
  line(0, random(height), width, random(height));
}