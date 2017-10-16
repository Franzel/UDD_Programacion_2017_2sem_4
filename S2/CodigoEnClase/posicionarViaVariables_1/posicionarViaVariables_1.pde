float posX;
float posY;
float sizeX;
float sizeY;

void setup(){
  size(300,500);
  sizeX=20;
  sizeY=20;
}

void draw(){
    ellipse(width/2,height/2,sizeX,sizeY);
    rect(width-sizeX,height-sizeY,sizeX, sizeY);
}