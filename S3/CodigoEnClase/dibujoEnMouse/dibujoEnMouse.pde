float s;

void setup() {
  size(400, 400);
}

void draw() {
  //background(255);
  s = random(100);
  fill(random(255), random(255), random(255));

  if (mousePressed) {
    rect(mouseX, mouseY, s, s);
    ellipse(mouseX, mouseY, s/2, s/2);
    line(mouseX, mouseY, mouseX-s, mouseY-s);
    point(mouseX+s, mouseY+s);
  }
  
}