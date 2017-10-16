boolean cuadrao = true;

void setup() {
  size(400, 200);
  rectMode(CENTER);
}
void draw() {
  background(255);
  println(cuadrao);
  
  if (cuadrao == true) {
    // haz una cosa
    //println("soy un cuadrado");
    fill(#00C3DB);
    rect(width/2, height/2, 50,50);
  } else {
    // haz otra cosa
    //println("no soy un cuadrado");
    fill(#BADA55);
    ellipse(width/2, height/2, 50,50);
  }
}

void mousePressed() {
  cuadrao = !cuadrao;
}

// Fin del codigo