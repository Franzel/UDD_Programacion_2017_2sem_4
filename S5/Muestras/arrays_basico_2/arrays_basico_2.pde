/*Este ejemplo demuestra que podemos tener varios arrays,
y que pueden guardar distintos tipos de data.
En este caso tenemos un array de ints y un array de strings
*/

int [] misNumeros; // DECLARAMOS un array de ints
String [] misPalabras = { "esto", "es", "filete" }; // DECLARAMOS y ASIGNAMOS un array de Strings

/*
// shortcut para declarar y crear
int [] misOtrosNumeros = new int [5]; // solo otra manera de hacer lo mismo en un paso, ver abajo
*/

void setup() {
  size(500, 500);
  misNumeros = new int[5]; // CREAMOS un array de 5 elementos

  // ASIGNAMOS valores a los elementos
  misNumeros[0] = 2;
  misNumeros[1] = 4;
  misNumeros[2] = 6;
  misNumeros[3] = 8;
  misNumeros[4] = 10;
  //  misNumeros[5] = 12;  // esto da un error porque esta fuera del limite (out of bounds)!!!
}

void draw() {
  //el array de strings
  for (int i = 0; i<misPalabras.length ; i++) {
    println(misPalabras[i]);
  }

  // el array de ints
  for (int i = 0; i<misNumeros.length ; i++) {
    println(misNumeros[i]);
    rect(10 * misNumeros[i], 100, 10, 10); // usemos esos numeros para posicionar rects
  }
}