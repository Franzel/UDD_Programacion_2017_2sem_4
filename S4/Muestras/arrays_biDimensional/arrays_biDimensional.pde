int nFilas = 20;
int nColumnas = 20;
float porte = 20;

//declaremos el array vacio, la cantidad de elementos esta dado por las variables nColumnas y nFilas
color miNumero [] [] = new color [nColumnas] [nFilas]; //misma sintaxis pero 2 brackets

void setup() {
  size (400, 400);

  //Asignamos valores al array via for loop
  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      miNumero [i] [j] = color(20*i, 10*j, 255);
    }
  }

  //Solo para imprimir a la consola los valores que acabamos de asignar
  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      println("i= " + i + ", j= " + j + " = "  + miNumero[i][j]);
    }
  }
}

void draw() {
  background(100, 200, 0);
  noStroke();
  
  //Usemos los valores que tenemos guardados en el array para pintar algo
  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {

      if (i==2 && j==10) {     // si la columna es 2 y la fila 10
        fill(255, 0, 0);       // pinta rojo.
      } else {                 // si no
        fill(miNumero[i][j]);  // pinta usando el color guardado en el array 
      }
      rect(porte*i, porte*j, 16, 16);
    }
  }
}