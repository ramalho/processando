int TAM = 8;
int GAP = 2;
int MOD = TAM+GAP;
void setup() {
  size(MOD*6, MOD*8);
  background(140);
  noStroke();
  fill(110);
  noLoop();
}

void draw() {
  int alt_lin = MOD*4; 
  for (int i=0; i*alt_lin<height; i+=2) {
    lin(0, i*alt_lin);  
    lin(-MOD*3, (i+1)*alt_lin);
  }
  save("t-padrao2.png");
}

void diag(int x0, int y0) {
  for (int x=x0, y=y0; x<width && y<height; x+=(TAM+GAP)*3,y+=(TAM+GAP)*2) {
    ti(x, y);
  }
}

void lin(int x0, int y0) {
  for (int x=x0; x<width; x+=MOD*6) {
    t(x,y0);
    ti(x+MOD*3,y0);
  }
}

void t(int x, int y) {
  rect(x,y,TAM,TAM);
  rect(x+MOD,y,TAM,TAM);
  rect(x+MOD*2,y,TAM,TAM);
  rect(x+MOD,y+MOD,TAM,TAM);
  rect(x+MOD,y+MOD*2,TAM,TAM);
}

void ti(int x, int y) {
  rect(x,y+MOD*2,TAM,TAM);
  rect(x+MOD,y,TAM,TAM);
  rect(x+MOD*2,y+MOD*2,TAM,TAM);
  rect(x+MOD,y+MOD,TAM,TAM);
  rect(x+MOD,y+MOD*2,TAM,TAM);
}
