float espacio;
float col;

void setup() {
  size(500, 500);
  espacio = 20;
  col=10;
}

void draw() {
  for (int i=0; i<50; i++) {
    for (int j=0; j<50; j++) {
      fill(random(255), random(255), random(255));
      rect(espacio*i, espacio * j, 10, 10);
    }
  }
}