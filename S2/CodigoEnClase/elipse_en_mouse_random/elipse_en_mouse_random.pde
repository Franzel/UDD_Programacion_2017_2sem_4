float posX;
float posY;
float s;
float m;

void setup() {
  size(500, 500);
  posX = 100;
  posY = 40;
  //frameRate(1200);
  s = 20;
  m = 20;
}

void draw() {
  background(0);
  if (mousePressed) {
    fill(random(255), random(255), random(255));
    s = 100;
    m = 50;
  } else {
    s=20;
    m=20;
    fill(0, 255, 0);
  }

  ellipse(mouseX, mouseY, s, m);//dibuja elipse
}