float [] largos = new float [30];
color [] colores = new color [30]; 
// float [] largos= { 10,30,40,29,134,23,5,278,17 };

void setup() {
  size(600, 500);
  colorMode(HSB, 255,100,100); //ver HSB en https://processing.org/reference/colorMode_.html
  for (int i=0; i<largos.length; i++) {
    largos[i] = random(13, 36);
    colores[i] = color(random(30,120), random(200), 200);
  }
}

void draw() {
  for (int i=0; i<largos.length; i++) {
    if (largos[i]>20) {
      fill(0, 100, 100);
    } else {
      fill(colores[i]);
    }
    
    fill(colores[i]);
    rect(0, i*15, largos[i] * 8, 10);
  }
}