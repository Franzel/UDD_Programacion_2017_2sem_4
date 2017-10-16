float posX;
float posY;
int dir;
float vel;

void setup() {
  size(400, 600);
  posX = width/2;
  posY = 0;
  dir = 1;
  vel = 2;
}

void draw() {
  if (posX>width) {
    dir *= -1;
  } 

  if (posX<0) {
    dir *= -1;
  }

  posX += vel * dir;
  //posY ++;

  ellipse(posX, 300, 40, 40);
  println(posX);
}