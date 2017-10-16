/*
 * Cargar una imagen
 * La imagen debe estar en la carpeta "data" al lado del sketch
 * son siempre 3 pasos:
 *    1. declarar variable PImage
 *    2. cargar la imagen en el PImage (via loadImage)
 *    3. Dibujar la imagen
 */

PImage img;  // Declaramos un a variable "img" del tipo PImage ('img' es un nombre cualquiera)

void setup() {
  size(640, 360);
  img = loadImage("fry.jpg");  // Cargar la imagen
}

void draw() {

  tint(255, 255, 255);
  image(img, 0, 0); // Dibujar la imagen

  // podemos usar 'tint' para colorear cada canal (RGBA) de la imagen
  tint(255, 0, 0, 100); //verdoso
  image(img, 200, 100); 

  // tenemos acceso al tamano de nuestra imagen via img.width e img.height
  // esto nos permite entre otras cosas alterar sus medidas
  tint(0,255,0,200); //verdoso
  image(img, 300, 0, img.width/3, img.height/2);
}

