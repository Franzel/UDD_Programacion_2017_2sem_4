//Este codigo es para detectar si hacemos click dentro de un cuadrado, lo que puede servir por ejemplo apra crear un boton.
float posX;
float posY;
float sizeX;
float sizeY;
color miColor;
boolean bClick;

void setup () {
  size (300, 300);
  sizeX= 50;
  sizeY= 50;
  posX=width/2 - sizeX/2;
  posY=height/2 - sizeY/2;
  miColor = color(255, 255, 255);
  fill (miColor);
  //rectMode(CENTER);
}

void draw () {
  //primero comprobamos si el cursor esta dentro del area del cuadrado
  if (mouseX > posX && mouseX < posX + sizeX && mouseY > posY && mouseY <posY + sizeY) {
    //si estamos dentro, ver si hacemos click o no. Si hacemos click, bClick es verdadero
    if (mousePressed) { 
      bClick = true ;
    } else {
      bClick = false;
    }
  }
  
  println(bClick); //imprimimos en consola el valor de bClick, para ver en qué está actualmente

  //si la booleana bClick es verdadera, pinta rojo
  //si es falsa pinta verde
  if (bClick == true) {
    miColor = color(255, 0, 0);
  } else {
    miColor = color(0, 255, 0);
  }

  //finalmente usamos 'miColor' para asignar el color a lo que dibujemos
  fill (miColor);
  rect(posX, posY, sizeX, sizeY);
  
}