void setup() {
  size(1100, 500);
  background(255);
  noFill();
  smooth();
  strokeJoin(ROUND);
  strokeWeight(40);
}
void draw() {
  if (mousePressed == true) {
    int r = int(random(0, 255));
    int g = int(random(0, 255));
    int b = int(random(0, 255));
    stroke(r, g, b);
    translate(-50, -175);
    beginShape(); //S
    vertex(mouseX + 95, mouseY + 50);
    vertex(mouseX + 50, mouseY +  50);
    vertex(mouseX + 50, mouseY +  100);
    vertex(mouseX + 95, mouseY +  100);
    vertex(mouseX + 95, mouseY +  150);
    vertex(mouseX + 50, mouseY +  150);
    endShape(); 
    translate(-5, 0);
    beginShape(); //K
    vertex(mouseX + 150, mouseY +  50);
    vertex(mouseX + 150, mouseY +  150);
    endShape(); 
    beginShape();
    vertex(mouseX + 200, mouseY +  50);
    vertex(mouseX + 150, mouseY +  100);
    vertex(mouseX + 200, mouseY +  100);
    vertex(mouseX + 200, mouseY +  150);
    endShape(); 
    beginShape(); //E
    vertex(mouseX + 300, mouseY +  50);
    vertex(mouseX + 250, mouseY +  50);
    vertex(mouseX + 250, mouseY +  150);
    vertex(mouseX + 300, mouseY +  150);
    endShape();
    beginShape();
    vertex(mouseX + 250, mouseY +  100);
    vertex(mouseX + 290, mouseY +  100);
    endShape(); //T
    beginShape();
    vertex(mouseX + 345, mouseY + 50);
    vertex(mouseX + 395, mouseY + 50);
    endShape();
    beginShape();
    vertex(mouseX + 370, mouseY +  50);
    vertex(mouseX + 370, mouseY +  150);
    endShape();
    translate(-10, 0);
    beginShape(); //C
    vertex(mouseX + 495, mouseY + 50);
    vertex(mouseX + 450, mouseY +  50);
    vertex(mouseX + 450, mouseY +  150);
    vertex(mouseX + 495, mouseY + 150);
    endShape();
    translate(-10, 0);
    beginShape(); //H
    vertex(mouseX + 550, mouseY +  50);
    vertex(mouseX + 550, mouseY +  150);
    endShape();
    beginShape();
    vertex(mouseX + 600, mouseY +  50);
    vertex(mouseX + 600, mouseY +  150);
    endShape();
    beginShape();
    vertex(mouseX + 550, mouseY +  100);
    vertex(mouseX + 600, mouseY +  100);
    endShape();
    beginShape(); //B
    vertex(mouseX + 650, mouseY +  50);
    vertex(mouseX + 698, mouseY +  50);
    vertex(mouseX + 698, mouseY +  100);
    vertex(mouseX + 706, mouseY +  100);
    vertex(mouseX + 706, mouseY +  150);
    vertex(mouseX + 650, mouseY +  150);
    vertex(mouseX + 650, mouseY +  50);
    endShape();
    beginShape();
    vertex(mouseX + 650, mouseY +  100);
    vertex(mouseX + 700, mouseY +  100);
    endShape();
    translate(4, 0);
    beginShape(); //O
    vertex(mouseX + 750, mouseY +  50);
    vertex(mouseX + 800, mouseY +  50);
    vertex(mouseX + 800, mouseY +  150);
    vertex(mouseX + 750, mouseY +  150);
    vertex(mouseX + 750, mouseY +  50);
    endShape();
    beginShape();
    vertex(mouseX + 850, mouseY +  50); //O
    vertex(mouseX + 900, mouseY +  50);
    vertex(mouseX + 900, mouseY +  150);
    vertex(mouseX + 850, mouseY +  150);
    vertex(mouseX + 850, mouseY +  50);
    endShape();
    beginShape(); //K
    vertex(mouseX + 950, mouseY +  50);
    vertex(mouseX + 950, mouseY +  150);
    endShape(); 
    beginShape();
    vertex(mouseX + 1000, mouseY +  50);
    vertex(mouseX + 950, mouseY +  100);
    vertex(mouseX + 1000, mouseY +  100);
    vertex(mouseX + 1000, mouseY +  150);
    endShape();
  }
}

