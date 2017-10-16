float posX;

void setup() {
  size(400, 200);
}

void draw() {
  background(50);

  if (mousePressed) {
    fill(255, 0, 255);

    if (mouseX<width/2) {
      fill(255, 0, 0);
    } else {
      fill(255, 255, 0);
    }
  } else {
    fill(255);
  }

  ellipse(mouseX, mouseY, 30, 30);
}



/*
else if (mousePressed) {
 fill(255,0,255);//fucsia
 } else {
 fill(0,255,255);//cian
 }
 
 */