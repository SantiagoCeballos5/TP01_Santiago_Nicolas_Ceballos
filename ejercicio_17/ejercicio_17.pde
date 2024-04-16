void setup() {
  float a = 1;
  float b = -3;
  float c = 2;
  float discriminante = b * b - 4*a*c;
  
  if (discriminante > 0) {
    float x1 = (-b + sqrt(discriminante)) / (2 * a);
    float x2 = (-b - sqrt(discriminante)) / (2 * a);
    println("Las raíces son: x1 = " + x1 + "y x2 = " + x2);
  } 
  else if (discriminante == 0) {
    float x = -b / (2 * a);
    println("La raíz doble es:" + x);
  } 
  else {
    float real = -b / (2 * a);
    float imaginario = sqrt(abs(discriminante)) / (2 * a);
    println("Las raíces son complejas: x1 = " + real + " + " + imaginario + "i, x2 = " + real + " - " + imaginario + "i");
  }
}
