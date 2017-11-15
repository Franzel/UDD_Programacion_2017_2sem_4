import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Arrays_Ejercicio_02 extends PApplet {

int nElementos = 250;
float [] valores = new float [nElementos];
int [] colores = new int [nElementos];

public void setup() {
	
	colorMode(HSB,250,100,100);

	for(int i=0;i<valores.length;i++){
		valores[i] = random(height);
		colores[i] = color(i,100,100);
	}

	println(valores);
}

public void draw() {
	background(0);
		for(int i=0;i<valores.length;i++){
			stroke(colores[i]);
		line(2*i,0,2*i,valores[i]);
	}

}
  public void settings() { 	size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Arrays_Ejercicio_02" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
