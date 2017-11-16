int nElementos = 200;
float [] valores = new float [nElementos];
color [] colores = new color [nElementos];
float separacion;

void setup() {
  size(500, 500);
  colorMode(HSB, 500, 100, 100);

  //Asignamos valores a los arrays
  for (int i=0; i<valores.length; i++) {
    valores[i] = random(height/3, height);
    colores[i] = color(i, 100, 100);
  }
  //println(valores);

  separacion = width/float(nElementos); //una tecnica para que siempre abarquen todo el ancho, independiente de la cant. de elementos
  println(separacion);
}

void draw() {
  background(30, 90, 20);
  for (int i=0; i<valores.length; i++) {
    stroke(colores[i]); //usamos el array de colores para pintar cada linea
    line(separacion*i, 0, separacion*i, valores[i]); //usamos el array de 'valores´para el largo de cada linea
  }
}

void randomizar() {
  for (int i=0; i<valores.length; i++) {
    valores[i] = random(height/3, height);
  }
}

void acortar() {
  for (int i=0; i<valores.length; i++) {
    valores[i] = valores[i] / 2;
  }
}

void mousePressed() {
  randomizar();
}

void keyPressed() {
  if (key=='d') {
    acortar();
  }
}