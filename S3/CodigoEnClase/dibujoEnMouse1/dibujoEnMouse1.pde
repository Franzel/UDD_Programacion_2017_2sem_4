void setup() {
  size(400, 400);
}

void draw() {
  estrella();
  ellipse(mouseX, mouseY, 20, 20);
}


void estrella() {
  ellipse(mouseX, mouseY, 20, 20);
  rect(mouseX, mouseY, 20, 20);
}