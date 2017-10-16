float posX;
float posY;
float sizeX;
float sizeY;
color miColor;
boolean click;

void setup () {
  size (300, 300);
  sizeX= 50;
  sizeY= 50;
  posX=width/2 - sizeX/2;
  posY=height/2 - sizeY/2;
  miColor = color(255, 255, 255);
  fill (miColor);
  //rectMode(CENTER);
}


void draw () {
  if (mouseX > posX && mouseX < posX + sizeX && mouseY > posY && mouseY <posY + sizeY) {
    if (mousePressed) { 
      click = true ;
    } else {
      click = false;
    }
  }

  if (click == true) {
    miColor = color(255, 0, 0);
  } else {
    miColor = color(0, 255, 0);
  }

  fill (miColor);

  rect(posX, posY, sizeX, sizeY);

  println(click);
}