float posX;

void setup(){
  size(400,200);
}

void draw(){
  background(50);
  
  if(mouseX<width/2){
    fill(255,0,0);    
  } else {
    fill(0,255,0);
  }
  
  ellipse(mouseX, mouseY, 30,30);
}