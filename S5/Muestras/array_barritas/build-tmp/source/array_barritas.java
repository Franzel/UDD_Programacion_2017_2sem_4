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

public class array_barritas extends PApplet {

float [] largos = new float [30];
int [] colores = new int [30]; 
  // float [] largos= { 10,30,40,29,134,23,5,278,17 };

public void setup() {
  
  for (int i=0; i<largos.length; i++) {
    largos[i] = random(13,30);
    colores[i] = color (i*10,200,200);
  }
}


public void draw() {
	for (int i=0;i<largos.length;i++){
		if(largos[i]>25){
			fill(255,0,0);
		}else{
			fill(colores[i]);
		}

		
		rect(0, i*15, largos[i], 10);
	}

}
  public void settings() {  size(300, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "array_barritas" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
