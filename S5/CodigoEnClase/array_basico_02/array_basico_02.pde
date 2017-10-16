int [] misNumeros = new int[10];
int [] bruno = new int[10];

void setup() {
  size(500, 200);
  for (int i=0; i<misNumeros.length; i++) {
    misNumeros[i] = 20 * i ;
    bruno[i] = 10*i;
  }
}

void draw() {
  for (int i=0; i<misNumeros.length; i++) {
    if (i==misNumeros.length/3) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    
    ellipse(misNumeros[i], bruno[i], 20, 20);
  }
}