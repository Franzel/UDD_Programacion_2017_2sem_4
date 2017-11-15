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

public class Arrays_Ejercicio_01 extends PApplet {

int nElementos = 10;
float [] valores = new float [nElementos];

public void setup() {
	
	valores[0] = 50;
	valores[1] = 23;
	valores[2] = 2;
	valores[3] = 12;
	valores[4] = 64;
	valores[5] = 53;
	valores[6] = 30;
	valores[7] = 18;
	valores[8] = 7;
	valores[9] = 30;

	println(valores);
}

public void draw() {
	line(10,0,10,valores[0]);
	line(20,0,20,valores[1]);
	line(30,0,30,valores[2]);
	line(40,0,40,valores[3]);
	line(50,0,50,valores[4]);
	line(60,0,60,valores[5]);
	line(70,0,70,valores[6]);
	line(80,0,80,valores[7]);
	line(90,0,90,valores[8]);
	line(100,0,100,valores[9]);
}
  public void settings() { 	size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Arrays_Ejercicio_01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
