float posX;
float posY;
float espacio;

void setup(){
  size(450,450);
  posX = 0;
  posY = 100;
  espacio = 10;
}

void draw(){
  
  for(int i = 0; i<20 ; i++){
    ellipse(espacio * i, posY, 30, 30);
  }
}