//Este codigo permite seleccionar figuaras para dibujar en el mouse
//Francisco Zamorano 2017

float miPorte; //variable tamaño
color miColor; //variable para color
int selectorFigura; //variable para seleccionar. Usamos un int
float posX; //variable posicion en X
float posY; //variable posicion en Y

void setup() {
  size(500, 500); // tamaño lienzo

  //inicializamos todas las variables
  miPorte= 20; //valor inicial a la variable
  miColor = color(255); //color inicial
  selectorFigura = 0; //inicializamos variable
  posX = 0; //partimos en 0, por que si 
  posY = 0; //partimos en 0, por que si

  background(39, 214, 201); //fondo inicial
}

void draw() {

  posX = mouseX;
  posY = mouseY;

  fill(miColor); //color que usaremos para pintar

  //dibujamos en base a si hacemos click y depende de que figuara seleccionamos
  //para seleccionar que funcion llamar (ver abajo al final) usamos la variable de selectorFigura
  if (mousePressed) {
    if (selectorFigura==0) {
      dibujaCuadrado();
    }
    if (selectorFigura==1) {
      dibujaCirculo();
    }
    if (selectorFigura==2) {
      dibujaLinea();
    }
  }
}

void keyPressed() {
  if (key=='a') {
    selectorFigura = 0;
    miPorte = 20;
    miColor = color(100,210,220);
  }
  if (key=='s') {
    selectorFigura = 1;
    miPorte = 30;
    miColor = color(170,220,100);
  }
  if (key=='d') {
    selectorFigura = 2;
    miPorte = 10;
    miColor = color(50,80,80);
  }
  if (key=='c') {
    borrarTodo();
    miColor = color(255);
  }
}

void dibujaCuadrado() {
  rect(posX, posY, miPorte, miPorte);
}

void dibujaCirculo() {
  ellipse(posX, posY, miPorte, miPorte);
}

void dibujaLinea() {
  stroke(miColor);
  line(posX-miPorte/2, posY-miPorte/2, posX+miPorte/2, posY+miPorte/2);
  line(posX-miPorte/2, posY+miPorte/2, posX+miPorte/2, posY-miPorte/2);
}

void borrarTodo() {
  background(39, 214, 201);
}  