float posX;
float posY;
int dirX;
int dirY;
int vel;

void setup() {
  size(400, 430);
  posX = width/2;
  posY = height/2;
  dirX = 1;
  dirY = 1;
  vel = 10;
}

void draw() {
  background(0);
  if(posX>width){
   dirX = -1 *vel ; 
  }
  if(posX<0){
    dirX = 1 *vel;
  }
  
  if(posY>height){
    dirY = -1*vel;
  }
  
  if(posY<0){
    dirY = 1*vel;
  }
    
  posX += dirX;
  posY += dirY;
  ellipse(posX, posY, 40, 40);
}