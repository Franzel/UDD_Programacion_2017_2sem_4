// Basado en ejemplo por Casey Reas  - https://processing.org/tutorials/print/


import processing.pdf.*;
boolean saveImage;

void setup(){
  
}

void draw() {
  if (saveImage) {
    beginRecord(PDF, "poster_###.pdf");
  }

  // Mi Codigo Aca

  if (saveImage) {
    endRecord();
    saveImage = false;
  }
}


void keyPressed() {
  if (key=='s') {
    saveImage=true;
  }
}