

/* built with Studio Sketchpad: 
 *   http://sketchpad.cc
 * 
 * observe the evolution of this sketch: 
 *   http://studio.sketchpad.cc/sp/pad/view/ro.t3uei4VE7oO/rev.13
 * 
 * authors: 
 *   tonydemarco

 * license (unless otherwise specified): 
 *   creative commons attribution-share alike 3.0 license.
 *   http://creativecommons.org/licenses/by-sa/3.0/ 
 */ 


//import processing.pdf.*;

int posx = 0;
int posy = 0;
void setup()
{
  size(500, 500);
  background(0);
  noStroke();
  colorMode(HSB, 360);
}

void draw() {
}

void keyPressed()
{
  char k = (char)key;
  int c = (int)key;
  switch(c) {
  case 10:
    newline();
    break;
  case 8:
    erase();
    break;
  case 9:
    save("test.png");
    break;
  default:
    if (c >= 32 && c < 128) {
      float hue = map(c, 32, 127, 0, 360);
      System.out.println(hue+"\t");
      desenha(hue, 360, 360);
      posx++;
      if (posx*20>=width) {
        newline();
      }
    }
    break;
  }
}

void newline() {
  posx = 0;
  posy++;
}

void desenha(float h, float s, float b) {
  fill(h, s, b);
  rect(posx*20, posy*20, 20, 20);
}

void erase() {
  if (posx == 0 && posy > 0) {
    posx = 24;
    posy--;
  } else if (posx>0) {
    posx--;
  }
  desenha(0,0,0);
}


