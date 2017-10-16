float [] valoresA = {40, 80, 120, 160, 200};
float [] valoresB = {20, 40, 60, 80, 100};

void setup() {
  size(500, 500);
}

void draw() {
  
  // por lo general, para acceder a la informacion guardada en el array utilizamos un for loop
  // el for loop, como es un contador (i) que incrementa en cada vuelta,
  // nos permite ir revisando uno a uno los "espacios" del array
  
  for (int i=0; i<valoresA.length; i++) {
    if (i==3) {         //si es el espacio (elemento) #3 del array
      fill(255, 0, 0);  //pinta rojo
    } else {            //si no
      fill(255);        //pinta blanco
    }

    ellipse(valoresA[i], valoresB[i], 15, 15); //dibuja en la posiciones guardadas en el array
  }
}