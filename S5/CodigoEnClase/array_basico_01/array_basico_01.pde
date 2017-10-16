int [] misNumeros = {130, 200, 260, 290};

void setup() {
  size(500, 200);
}

void draw(){
  for(int i=0;i<misNumeros.length;i++){
    ellipse(misNumeros[i], 100, 20, 20); 
  }
}