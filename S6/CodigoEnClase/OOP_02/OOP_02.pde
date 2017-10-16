// declarar objeto
Auto auto1, auto2;

void setup() {
  //inicializar objeto
  for (int i=0; i<1000; i++) {
    color miColor= color(255, 0, 0);
    auto1 = new Auto(0, 200, 20, miColor);
    color miColor2= color(255, 255, 0);
    auto2 = new Auto(100, 100, 35, miColor2);
  }

  size(400, 300);
}

void draw() {
  background(255);
  //utilizar objeto
  //modificar objeto(llamar a sus metodos)

  for (int i=0; i<1000; i++) {
    auto1.avanza();
    auto1.dibuja();
    auto2.avanza();
    auto2.dibuja();
  }
}