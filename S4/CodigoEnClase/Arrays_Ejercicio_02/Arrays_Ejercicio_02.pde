int nElementos = 250;
float [] valores = new float [nElementos];
color [] colores = new color [nElementos];

void setup() {
  size(500, 500);
  colorMode(HSB, 250, 100, 100);

  for (int i=0; i<valores.length; i++) {
    valores[i] = random(height);
    colores[i] = color(i, 100, 100);
  }

  println(valores);
}

void draw() {
  background(0);
  for (int i=0; i<valores.length; i++) {
    stroke(colores[i]);
    line(2*i, 0, 2*i, valores[i]);
  }
}