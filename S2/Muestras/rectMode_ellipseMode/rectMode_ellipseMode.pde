size(600, 600); // seteamos tamaño de la ventana
background(200, 200, 100); // especificar un color RGB

fill(0, 0, 255);
rectMode(CORNER);  //este es el estado por defecto para rects
rect(100, 100, 50, 50); // rectangulo simple

ellipseMode(CENTER); //este es el estado por defecto para ellipses
fill(255, 0, 0);
ellipse(100, 100, 50, 50); //los circulos se dibujan desde su centro



//al usar rectMode CENTER, los rectangulos se dibujan desde su centro
//notese como el rectangulo y circulo estan alineados
//una vez que cambiamos el modo, todo lo que se dibuje despues de esa linea, adoptara este modo
rectMode(CENTER);
noFill();
rect(200, 100, 50, 50);

fill(0, 255, 0);
ellipse(200, 100, 50, 50);