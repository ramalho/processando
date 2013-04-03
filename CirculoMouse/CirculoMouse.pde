int x;
int y;
void setup() {
  size(400, 400);
}

void draw() {
  line(mouseX, mouseY, x, y);
  x = mouseX;
  y = mouseY;
}
