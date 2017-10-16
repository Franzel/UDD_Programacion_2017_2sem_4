size(400, 400); //tamano de canvas

float cuco; //creamos una variable
cuco = random(100); //asignamos valor a la variable
println(cuco); // imprimimos el valor en consola
rect (100, 100, cuco, cuco); //dibujamos un rect con la variable

//solo como referencia, dibujamos un rectangulo de 100x100 encima
stroke(255, 0, 0);
noFill();
rect (100, 100, 100, 100);