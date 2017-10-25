float s; //declaramos una variable tipo float, la vamos a usar para el tamaño

void setup() {
  size(400,400);  //tamaño canvas
  background(180,240,240); //pintamos fondo  
  s = 30; //asignamos valos a la variable
}
void draw() {
  ellipse(mouseX, mouseY, s, s); //dibujamos una elipse en la posicion del mouse
}