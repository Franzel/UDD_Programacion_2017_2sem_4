// odigo para capturar PDF
//Basado en ejemplo por Casey Reas  - https://processing.org/tutorials/print/

import processing.pdf.*; //usaremos la librería de PDF incluida en processing
boolean saveImage;

void setup() {
  size(800,600);
}

void draw() {
  if (saveImage) {
    beginRecord(PDF, "poster_###.pdf");
  }

  // Mi Codigo Aca
  background(#c9ee26);
  ellipse(width/2, height/2, mouseX, mouseY);
  
  
  //esto debe ir antes del final del draw, despues de mi código
  if (saveImage) {
    endRecord();
    saveImage = false;
  }
}


void keyPressed() {
  if (key=='r') {
    saveImage=true;
  }
}