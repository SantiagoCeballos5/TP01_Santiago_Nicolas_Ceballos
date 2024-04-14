String texto_consola = "escribe tu nombre:";
String nombre_ingresado = "";
String mensaje_saludo = "";

void setup () {
  size (400, 400);
  println(texto_consola);
}

void draw() {
  background(0);
  text(mensaje_saludo, 60, 170);
  textSize(32);
}

void keyPressed() {
  nombre_ingresado += key;
  println(nombre_ingresado);
  
  if (key == '\n') {
    mensaje_saludo = "hola estimado, " + nombre_ingresado;
    println(mensaje_saludo);
  }
}
