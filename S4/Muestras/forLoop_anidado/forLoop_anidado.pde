int posX;
int posY;

void setup() {
  size(800, 800);
  posX = 1;
  posY = 1;
}

void draw() {
  background (250, 50, 250);
  
  //For loop biDimensional
  for (int i=0; i<width; i+= 20) {
    for (int j=0; j<height; j+= 20) {
      rect(posX * i, posY * j, 10, 10);
    }
  }
}