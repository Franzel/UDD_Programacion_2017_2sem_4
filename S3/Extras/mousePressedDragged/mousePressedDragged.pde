void setup(){
  size(300,300);
}

void draw(){

}

void mouseDragged(){
  //cuando hacemos click+drag dibujamos una elipse
  fill(random(255));
  ellipse(mouseX,mouseY,15,15);
}

void mousePressed(){
  //cuando hacemos click, pintamos todo de blanco
  background(255);
}