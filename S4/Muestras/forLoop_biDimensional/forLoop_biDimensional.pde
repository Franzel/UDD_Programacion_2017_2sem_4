int mod = 1;

void setup() {
  size(500, 500);

  smooth();
}

void draw() {
 

  background(255);
  for (int x=0; x<width; x++) {
    for (int y=0; y<height; y++) {
      if (x%mod==0 || y%mod==0) {
        fill(255, 0, 0);
      } else {
        fill(0, 20, 0);
      }
      ellipse(x*10, y*10, 10, 10);
    }
  }
}

void keyPressed(){
 if(keyCode==RIGHT){
  mod ++;
 }
 if(keyCode==LEFT&&mod>0){
  mod--; 
 }
 println(mod);
}