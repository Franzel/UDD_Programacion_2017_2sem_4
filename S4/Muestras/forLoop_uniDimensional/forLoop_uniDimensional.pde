float posX;

void setup() {
  frameRate(2);
  size(500, 500);
  posX=1;
}

void draw() {

  ellipseMode(CORNER);

  for (int i=0; i<100; i++) {
    println(i);

    if (i%6==0) {
      fill(255,0,0);
    } else {
      fill(0,i*20,0);
    }
    ellipse(i*20, 20*i, 5*i, 5*i);
  }
}

