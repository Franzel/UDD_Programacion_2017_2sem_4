float posX;
float posY;
float espacio;
int nElementos;
float col;

void setup() {
  size(500, 500);
  posX = 0;
  posY = 0;
  espacio = 15;
  nElementos = 40;
  col = 0;
}

void draw() {
  background (250, 50, 250);

  for (int i=0; i<nElementos; i++) {
    fill(col+i*10);
    ellipse(posX + i * espacio, posY + i*espacio, 2 * i, 2* i);
    println(i);
  }
  
  

}