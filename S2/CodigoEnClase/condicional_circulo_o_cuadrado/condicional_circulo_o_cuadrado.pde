void setup(){
  size(500,500);
}

void draw(){
  
  if(mousePressed){
    ellipse(mouseX,mouseY,30,30);
  } else {
    rect(mouseX, mouseY, 50,50);
  }
}