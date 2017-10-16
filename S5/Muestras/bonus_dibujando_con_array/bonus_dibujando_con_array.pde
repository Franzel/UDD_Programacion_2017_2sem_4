int num = 100; //una variable int y le asignamos valor 50
float[] posX = new float[num]; //declaramos y creamos el array
float[] posY = new float[num]; //declaramos y creamos el array

void setup() {
  size(600, 600);
}

void draw() {
  //background(255); //comentar y descomentar esta linea para ver efectos distintos
  
  for (int i=num-1; i>0; i--) { //notese que contamos al reves
    posX[0] = mouseX; //la ultima posicion siempre sera la posicion del mouse
    posY[0] = mouseY; //la ultima posicion siempre sera la posicion del mouse

    line(posX[i], posY[i], posX[i-1], posY[i-1]); //dibujar linea entre pos anterior y la actual
    ellipse(posX[i], posY[i], 5,5); // y una elipse pequena

    posX[i] = posX[i-1] ; //correr todos los valores hacia la derecha en el array
    posY[i] = posY[i-1] ; //correr todos los valores hacia la derecha en el array
    
    println(i+" " + posX[i] +"  "+posY[i]); //imprimir a consola para ver los numeros
    posY[i] ++; //animar la posicion en Y
  }
}