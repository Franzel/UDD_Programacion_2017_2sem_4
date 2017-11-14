int num = 100;
float[] xPos = new float[num]; //declaramos y creamos el array
float[] yPos = new float[num]; //declaramos y creamos el array

void setup() {
  size(600, 600);
  for (int i=num-1; i>0; i--) {
    xPos[i] = 0;
    yPos[i] = 0;
  }
}

void draw() {
  background(255);
  smooth();

  for (int i=num-1; i>0; i--) {
    xPos[i] = xPos[i-1] ; //movemos todos los valores hacia la "derecha" en el array
    yPos[i] = yPos[i-1] ; //movemos todos los valores hacia la "derecha" en el array
  }

  xPos[0] = mouseX; //la posicion mas reciente siempre sera donde esta el cursor
  yPos[0] = mouseY; //la posicion mas reciente siempre sera donde esta el cursor

  for (int i=num-1; i>0; i--) {
    fill(255, 0, 0, 255 - 5*i);
    ellipse(xPos[i], yPos[i], i, i); // ellipse que aumentara de tamano
  }
}