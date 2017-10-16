//Declaramos las variables que vamos a utilizar
float posX; //posicion en X
float posY; //posicion en Y
float sizeX; //tamaño en X
float sizeY; //tamaño en Y
float dirX; //dirección en X
float dirY; //dirección en Y
float vel; //velocidad a la cual se va a mover la pelota

void setup() {
  size(600, 300);
  background(255, 0, 0);

  posX = random(width); //inicializamos posicion X, en random del ancho
  posY = random(height); //inicializamos posicion Y, en random del alto
  sizeX = 50; //inicializamos tamaño en X
  sizeY = 50; //inicializamos tamaño en Y
  dirX = 1; //inicializamos dirección en X, positivo
  dirY = -1; //inicializamos dirección en X, negativo
  vel = 7; // velocidad de 7, solo porque si
}

void draw() {
  background(255, 0, 0);

  //si la posicion en X es menor a 0, invertimos dirección en X
  if (posX<0) {
    dirX = dirX * -1;
  }
  //si la posicion en X es mayor al ancho de canvas, invertimos dirección en X
  if (posX>width) {
    dirX = dirX * -1;
  }

  //si la posicion en Y es menor a 0, invertimos dirección en Y
  if (posY<0) {
    dirY = dirY * -1;
  }

  //si la posicion en Y es mayor al alto de canvas, invertimos dirección en Y
  if (posY>height) {
    dirY = dirY * -1;
  }


  // En cada cuadro sumamos la velocidad a la posicion actual.
  // Dependiendo si la dir es positiva o negativa estamos sumando o restando a la posicion
  // por ende, si es positiva, la pelota va hacia la derecha, y a la izquierda cuando la dir es negativa
  // Lo hacemos por separado para X e Y
  posX += vel * dirX;  
  posY += vel * dirY; //escrito en forma reducida, es lo mismo que:  posY = posY + vel * dirY

  //finalmente dibujamos la elipse
  noStroke();
  ellipse(posX, posY, sizeX, sizeY);

  //imprimir en consola la posicion de la pelota en cada cuadro
  println("mi posX es: " + posX + " , mi posY es:" + posY);
}