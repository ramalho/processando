/*
Testes
======

- desenhar ponteiro de segundos simples
- criar outro ponteiro girado usanto trigonometria.
- animar o ponteiro de segundo sem preocupação com a sincronia.
- sincronizar animação com o tempo.
- suavizar omovimento.
- salto do último segundo.

 */ 
void setup() {
  size(600, 600);
  background(255);
  smooth();
  frameRate(1000);
}

void draw() { 
  background(255);
  stroke(255, 0, 0);
  strokeWeight(10);
  //line(300,300,580,300); 
  translate(300,300);
  float ang = map(millis() % 60000,0,59999,-90,270.0);
  if(ang>=264){
    rotate(radians(264));
  }
  else
  rotate(radians(ang));
  line(0,0,280,0); 
  
}
