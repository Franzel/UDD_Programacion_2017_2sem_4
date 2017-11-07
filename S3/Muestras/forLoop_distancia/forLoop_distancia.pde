float espacio;
float radMax;
float porte;
float distMax;
float mod; //esta variable la utilizaremos para modificar cualquier cosa (tamaño, color, etc) basado en la distancia al mouse


void setup() {
  size(500, 500);
  porte = 40; //tamaño máximo
  espacio=20; //espacio entre unidades
  distMax = dist(0, 0, width, height); //la diagonal del canvas, distancia máxima
  mod = 1; // inicializamos la variable, esto no es mandatorio de hacer pero buena practica
}

void draw() {
  background(0);

  for (int i=0; i<width; i+=espacio) {
    for (int j=0; j<height; j += espacio) {
      mod = dist(mouseX, mouseY, i, j); //calculamos la distancia entre el mouse y cada punto i/j
      mod = mod/distMax * porte; //sacamos un porcentaje(0-1) y multiplicamos por tamano maximo

      miDibujo(i, j, mod, mod);//llamamos a la función y le pasamos parámetros
    }
  }
}

//función para dibujar, va a recibir 4 parámetros pos X e Y, tamaño X e Y
void miDibujo(float x, float y, float sX, float sY) {
  noStroke();
  ellipse(x, y, sX, sY); //en este caso dibujamos una elipse
}