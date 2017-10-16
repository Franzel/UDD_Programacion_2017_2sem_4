//declaro variables
float posX;
float posY;
float size;
color col;

//inicializo variables
void setup() {
  posX = 0;
  posY = 100;
  size = 50;
  col  = color(255, 0, 0);

  size(500, 500);
}

//uso variables
void draw() {
  background(255);
  avanza();
  dibuja();
}

//modificando
void avanza() {
  posX += 3;
}

void dibuja() {
  fill(col);
  rect(posX, posY, size, size/2);
}