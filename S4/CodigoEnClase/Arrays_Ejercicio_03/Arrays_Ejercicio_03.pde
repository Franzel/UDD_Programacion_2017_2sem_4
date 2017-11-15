int nElementos = 250;
float [] valores = new float [nElementos];
color [] colores = new color [nElementos];

void setup() {
  size(500, 500);
  colorMode(HSB, 250, 100, 100);
  //Asignamos valores a los arrays
  for (int i=0; i<valores.length; i++) {
    valores[i] = random(height);
    colores[i] = color(i, 100, 100);
  }
  println(valores);
}

void draw() {
  background(0);
  for (int i=0; i<valores.length; i++) {
    stroke(colores[i]); //usamos el array de colores para pintar cada linea
    line(2*i, 0, 2*i, valores[i]); //usamos el array de 'valors´para el largo de cada linea
  }
}

void randomizar() {
  for (int i=0; i<valores.length; i++) {
    valores[i] = random(height);
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