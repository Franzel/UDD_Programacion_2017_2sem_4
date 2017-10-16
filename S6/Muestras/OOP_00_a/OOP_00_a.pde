float posX;
float posY;
float size;
color col;


void setup() {
  posX = 0;
  posY = 100;
  size = 50;
  col  = color(255,0,0);
  
  size(500,500);
}


void draw() {
  background(255);
  avanza();
  dibuja();
}

void avanza(){
  posX += 3;
  
}

void dibuja(){
  fill(col);
  rect(posX, posY, size, size/2);
  
}