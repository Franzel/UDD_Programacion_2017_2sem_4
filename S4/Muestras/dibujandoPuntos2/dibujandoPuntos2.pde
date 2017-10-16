float xPos, yPos = 0;
boolean isPressed = false;

void setup() {
  size(500, 500); 
  background(255);
}

void draw() {
  //  fill(255);
  //  isPressed = false;

  if (mousePressed) {
    xPos = mouseX;
    yPos = mouseY;
  } else {
    xPos += random(-1,1);
    yPos += random(2);
  }

//  point(xPos, yPos);
  ellipse(xPos, yPos, 4,4);
}

