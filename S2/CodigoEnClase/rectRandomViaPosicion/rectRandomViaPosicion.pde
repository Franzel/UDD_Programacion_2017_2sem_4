float porteX = 100;
float porteY = 100;
float posX;
float posY;

void setup() {
  size(500, 500);
  //frameRate(5);
}

void draw() {
  posX = random(0, 500);
  posY = random(0, 500);
  rect(posX, posY, porteX, porteY);
}