int nColumnas = 12;
int nFilas = 30;
//declaramos 2 arrays bidimensionales, uno para el tamaño y otro para el color
float [][] largos = new float [nColumnas][nFilas];
color [][] colores = new color [nColumnas][nFilas]; 

void setup() {
  size(600, 500);
  //rellenamos los arrays automaticamente a traves de for loop
  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      //largos[i][j]= random(13, 30); //en cada vuelta, un numero random
      largos[i][j]= j; //si activamos esta linea y apagamos la anterior, los tamanos seran incrementales
      colores[i][j] = color (j*i, 200, 200); //en cada vuelta, llenamos el array con un color que incrementa en rojo
    }
  }
}

void draw() {
  //ahora accedemos a la info guardada en los arrays
  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      fill(colores[i][j]);
      rect(i*50, j*15, largos[i][j], 10);
    }
  }
  println("largo: " + largos[4][12]); // aca solo para ver que numeros hay en una celda especifica del array
}