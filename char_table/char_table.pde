import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
int CEL = 44;
int GAP = 2;
PFont font;
PFont mono;
byte[] bytes = new byte[256];
CharBuffer letras;
Charset cset;
String[] cset_names = {"US-ASCII", "cp437", "cp850", 
"ISO-8859-1", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "KOI8-R", 
"ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", 
//"ISO-8859-10", "ISO-8859-6-E", "ISO-8859-6-I", "ISO-8859-8-E", "ISO-8859-8-I",
// "ISO-8859-14", "ISO-8859-16", 
"ISO-8859-13", "ISO-8859-15", 
"windows-1252", "windows-1251", "macintosh","Shift_JIS", "Windows-31J"};

void setup() {
  size(CEL*17+GAP-1, CEL*17+GAP-1);
  background(255);
  noLoop();
  font = loadFont("Times-Roman-32.vlw");
  mono = loadFont("Menlo-Regular-24.vlw");
  textMode(SCREEN);
}

void draw() {
  grade();
  fill(96);
  textFont(mono, 24);
  textAlign(LEFT);
  for (int i=0; i<16; i++) {
    fill(96);
    text(" "+hex(i,1), (i+1)*CEL+CEL/5, CEL*4/5); 
    text(hex(i,1), CEL/5, (i+1)*CEL+CEL*5/7); 
    fill(224);
    text("_", (i+1)*CEL+CEL/5, CEL*4/5); 
    text(" _", CEL/5, (i+1)*CEL+CEL*5/7); 
  }
  for (int i=0; i<256; i++) {
    bytes[i] = (byte)i;
  }
  for (int i=0; i < cset_names.length; i++) {
    String cset_name = cset_names[i];
    cset = Charset.forName(cset_name);
    letras = cset.decode(ByteBuffer.wrap(bytes));
    grade();
    preencher(letras);
    save(cset_name+".png");
  }
}

void preencher(CharBuffer letras) {
  fill(0);
  textFont(font, 32);
  textAlign(CENTER);
  for (int i=0; i<16; i++) {
    for (int j=0; j<16; j++) {
      text(String.valueOf(letras.get(j*16+i)), CEL*i+CEL*1.5, CEL*j+CEL*1.75);
    }
  }
}

void grade() {
  strokeWeight(2);
  strokeCap(PROJECT);
  stroke(192);
  fill(255);
  rect(CEL, CEL, 17*CEL, 17*CEL);
  for (int i=1; i<=17; i++) {
    line(CEL, i*CEL, 17*CEL, i*CEL);
    line(i*CEL, CEL, i*CEL, 17*CEL);
  }
}
