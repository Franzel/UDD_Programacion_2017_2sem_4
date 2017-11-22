void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(255);
  //Esto no da el resultado esperado.
  //Con este metodo estamos rotando el canvas, no los elementos

  rect(0, 0, 30, 30);

  //las funciones de Push-PopMatrix hacen que la rotacion solo afecte lo que este entremedio de ellas
  pushMatrix();//Empieza Aca
  translate(width/2, height/2); //trasladamos la matriz a donde actualmente esta la mitad del canvas
  rotate(radians(30)); //rotamos 30 grados. Ojo que rotate() solo acepta radianes, por eso convertimos usando funcion radians()
  rect(0, 0, 100, 100); //dibujamos la cosa
  popMatrix();//Transformaciones terminan aca y olvemos a la normalidad

  line(0, 0, width/2, height/2);
}