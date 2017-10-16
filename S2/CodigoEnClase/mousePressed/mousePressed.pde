float sizeX;
float sizeY;

void setup() {
  size(400, 400);
  sizeX   = 10;
  sizeY   = 100;
  background(255, 0, 0);
}

void draw() {
  sizeX=random(50,100);
  sizeY=random(50,100);
  if (mousePressed) {
    ellipse(mouseX, mouseY, sizeX, sizeY);
  }
}