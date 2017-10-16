float posX;
float posY;
float sizeX, sizeY;
float vel;

float radio;

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);

  posX  = width/2;
  posY  = height/2;
  sizeX = 100;
  sizeY = 100;
  radio = 200;
  noStroke();
}



void draw() {
  //background(27);

  vel  = frameCount*0.03;
  posX = width/2  + sin(vel)*radio;
  posY = height/2 + cos(vel)*radio;

  fill(sin(vel/2)*radio, 100, 100);
  ellipse(posX, posY, sizeX, sizeY);
}