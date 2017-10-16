/*
Este sketch no hace nada visual,
simplemente demuestra como podemos imprimir 
a la consola información relevante.
En este caso imprime variables
*/
void setup() {
  size(200, 200);
}

void draw() {
  println("mi frame ahora es : "  + frameCount + " y mi ancho es de:" + width);
  println("la mitad del ancho es:" + width/2);
}