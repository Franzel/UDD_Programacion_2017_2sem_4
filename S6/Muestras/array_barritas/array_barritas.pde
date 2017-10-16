float [] largos = new float [30];
color [] colores = new color [30]; 
// float [] largos= { 10,30,40,29,134,23,5,278,17 };

void setup() {
  size(600, 500);
  for (int i=0; i<largos.length; i++) {
    largos[i] = random(13, 30);
    colores[i] = color (i*10, 200, 200);
  }
}

void draw() {
  for (int i=0; i<largos.length; i++) {
    if (largos[i]>25) {
      fill(255, 0, 0);
    } else {
      fill(colores[i]);
    }
    rect(0, i*15, largos[i], 10);
  }
}