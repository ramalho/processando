void setup() {
  size(640,640);
  fill(0);
  textSize(32);
}

void draw() {
  background(220);
  stroke(255, 0, 0);
  line(mouseX, 0, mouseX, height);
  stroke(0, 0, 255);
  line(0, mouseY, width, mouseY);
  mostrarCoords(mouseX, mouseY);
}

void mostrarCoords(int x, int y) {
  String coords = x+","+y;
  float dx = 0;
  float dy = 0;
  if (x + textWidth(coords) > width) dx = -textWidth(coords);
  if (y < textAscent()) dy = textAscent() - textDescent();  
  text(coords, x+dx, y+dy);
}
