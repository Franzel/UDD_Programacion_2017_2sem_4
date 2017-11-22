//Código para capturar un PNG

void setup() {
  size(800, 600);
}

void draw() {
  background(#C9EDEA);
  ellipse(width/2, height/2, mouseX, mouseY);
}


void keyPressed() {
  if (key== 'r') {
    saveFrame("captura_###.png"); //PNG es recomendado, pero se puede cambiar la extension a .jpg
  } 
}