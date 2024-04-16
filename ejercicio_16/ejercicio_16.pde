PVector coordenadasLink;
PVector coordenadasTesoro;

public void setup(){
  size(600,600);
  coordenadasLink = new PVector(100,100);
  coordenadasTesoro = new PVector(200,400);
}

public void draw(){
  background(#00F9FF);
  dibujarLink();
  coordenadasLink.x = mouseX;
  coordenadasLink.y = mouseY;
  validarDibujarTesoro();
}

public void dibujarLink(){
  fill(#0BFF00);
  circle(coordenadasLink.x,coordenadasLink.y,40);
}

public void dibujarTesoro(){
  fill(#FFD900);
  rect(coordenadasTesoro.x,coordenadasTesoro.y,60,60);
}

public float obtenerDistancia(){
  float distancia;
  float cateto1=coordenadasTesoro.x-coordenadasLink.x;
  float cateto2=coordenadasTesoro.y-coordenadasLink.y;
  distancia = sqrt(pow(cateto1,2)+pow(cateto2,2));
  return distancia;
}

public void validarDibujarTesoro(){
  if(obtenerDistancia() < 32){
    println("Se obtuvo un Power Up!");
  }else{
    dibujarTesoro();
  }
}
