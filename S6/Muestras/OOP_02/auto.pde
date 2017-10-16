// Creamos la CLASE con nuestro nombre
class Auto {
  float posX;
  float posY;
  float size;
  color col;
  float vel;

  // Constructor
  Auto(float pX, float pY, float s, color c, float v) {
    posX = pX;
    posY = pY;
    size = s;
    col  = c;
    vel  = v;
  }
  
  // Método para dibujarlo
  void dibuja() {
    fill(col);
    rect(posX, posY, size, size/2);
    fill(0,0,0,100);
    rect(posX+size/4, posY, size/2, size/2);
  }

  // Método para moverlo
  void avanza() {
    if (posX < width) {
      posX += vel;
    } else {
      posX = -size;
    }
  }
}