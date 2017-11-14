int nColumnas = 30;
int nFilas = 30;

color [][] misColores = new color [nColumnas][nFilas]; //array biDim de colores
float [][] misPortes = new float [nColumnas][nFilas]; // array biDim de tamanos
float separacion = 25; //separacion de los elementos en la grilla


void setup() {
  size(500, 500);
  
  //en el setup, rellenamos nuestros arrays con valores.
  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      misColores[i][j]= color(random(255), 0, 0, 200);
      misPortes[i][j]= i;
    }
  }

  noStroke();
}


void draw() {
  background(255);
  rectMode(CENTER);

  //aca accedemos a los valores guardados en los arrays para dibujar
  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      fill(misColores[i][j]);
      rect(separacion*i, separacion*j, misPortes[i][j], 10);
    }
  }
}