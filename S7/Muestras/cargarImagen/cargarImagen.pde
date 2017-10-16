PImage miImagen;


void setup() {
  size(800, 600);
  //imageMode(CENTER);
  miImagen = loadImage("fry.jpg");
}

void draw() {
  image(miImagen, 0, 0, miImagen.width, miImagen.height);
}

