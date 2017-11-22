void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  background(255);
  //Esto no da el resultado esperado.
  //Con este metodo estamos rotando el canvas, no los elementos
  rotate(radians(10)); 
  rect(0, 0, 30, 30);
  rect(width/2, height/2, 100, 100);
  line(0, 0, width/2, height/2);
}