///DECLARANDO VARIABLES

/// manera basica de declarar una variable
int x; //le estamos pidiendo al computador que guarde espacio en su memoria para un int llamado "x"

float posX; //idem, para un float llamado "xPos"

//Shortcut para declarar mas de una variable al mismo tiempo
//Son todas del mismo tipo de data, en este caso son "integers", que aca se llaman "int"
int gato, perro, ardilla; 


// Podemos tambien asignar un valor a la variable al declararla.
int y = 100;
float posY = 200;


void setup() {  
  size(500, 500); //como convención siempre declaramos el tamaño de ventana primero

  x = 100; //asignamos un valor a la variable x que decalaramos arriba
  posX = 200;// idem para xPos

  int myVar;  //si declaramos una variable aca (dentro de setup) solo será accesible dentro de setup()

  gato = perro = ardilla = 100;  //otro shortcut

  
  int z;
  //int z=100; //esto es una re'declaracion de una variable, por lo tanto dará un error!
  
}

void draw() {
  rect(posX, posY, x, y); //usando las variables para darle forma a un rectángulo
}