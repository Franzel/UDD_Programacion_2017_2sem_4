/*
 * Image Load usando Arrray
 
 * Este codigo ajustara el ancho de las imagenes para que se ajuste al canvas
 * dependiendo de la cantidad que queramos
 * es decir, mas imagenes = mas pequenas
 */

int numImages = 10;
PImage [] img = new PImage[numImages];  // Declaramos variable "img" tipo PImage
float imageWidth, imageHeight, imageRatio; //variables que vamos a necesitar

void setup() {
  size(825, 600);
  for (int i=0; i<img.length; i++) {    // accedemos al length del array
    img[i] = loadImage("fry.jpg");      // cargamos la imagen a cada elemento del array
  }

  // dividimos el ancho del canvas por la cantidad de imagenes que tendremos (numImages)
  // Atencion con lo que estamos haciendo abajo, es lo que se llama type-casting, es forzar un tipo de data a convertirse en otra.
  // En este caso necesitamos convertir a un float el 'width', que es un int
  imageWidth = (float) width / numImages; 
  
  // tomamos una muestra del ancho de nuestra imagen
  // en este caso lo hacemos en [0], pero podriamos hacerlo de cualquiera ya que es la misma imagen
  imageRatio = (float) img[0].width / img[0].height; 
  
  // usaremos el radio para re-escalar las imagenes al dibujar
  print(imageRatio);
}

void draw() {
  for (int i=0; i<img.length; i++) {
    image(img[i], imageWidth*i, 0, imageWidth, imageWidth / imageRatio);
  }
}