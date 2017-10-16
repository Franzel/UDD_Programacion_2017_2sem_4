PImage miImagen;


void setup() {
  size(800, 600);
  //imageMode(CENTER);
  miImagen = loadImage("grumpyCat.jpg");
}

void draw() {
  for (int i=0; i<5; i++) {
    for ( int j=0; j<5; j++) {
      image(miImagen, miImagen.width/4 * i, miImagen.height/4 * j, miImagen.width/4, miImagen.height/4);
    }
  }
}