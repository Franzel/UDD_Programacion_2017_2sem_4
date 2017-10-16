class Auto {
  //declarar variables
  float posX;
  float posY;
  float porte;
  color col;
  
  //constructor
  Auto(float x, float y, float p, color c) {
    posX  = x;
    posY  = y;
    porte = p;
    col   = c;
  }

  //metodos
  void avanza() {
    posX += 1;
  }

  void dibuja() {
    fill(col);
    rect(posX, posY, porte, porte);
  }
}