PImage miImagen;


void setup() {
  size(800, 600);
  //imageMode(CENTER);
  miImagen = loadImage("fry.jpg");
}

void draw() {
  for (int i=0; i<10; i++) {
    for ( int j=0; j<10; j++) {
      image(miImagen, miImagen.width/8 * i, miImagen.height/8 * j, miImagen.width/8, miImagen.height/8);
    }
  }
}

