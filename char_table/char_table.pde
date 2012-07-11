import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
int CEL = 44;
int GAP = 2;
int LATERAL = CEL*6;
PFont serif;
PFont mono;
PFont sans;
byte[] bytes = new byte[256];
CharBuffer letras;
Charset cset;
CharsetDecoder decoder;
int cset_num = 0;
int cset_num_atual = cset_num-1;
String[] cset_names = {"US-ASCII", "cp437", "cp850", 
"ISO-8859-1", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "KOI8-R", 
"ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", 
//  
//
//"ISO-8859-10", "ISO-8859-6-E", "ISO-8859-6-I", "ISO-8859-8-E", "ISO-8859-8-I",
// "ISO-8859-14", "ISO-8859-16", "Shift_JIS", "Windows-31J"
"ISO-8859-13", "ISO-8859-15", 
"windows-1252", "windows-1251", "macintosh"};

void setup() {
  size(CEL*17+GAP-1+LATERAL, CEL*17+GAP-1);
  background(255);
  serif = loadFont("Times-Roman-32.vlw");
  mono = loadFont("Menlo-Regular-24.vlw");
  sans = loadFont("LucidaSans-32.vlw");
  textMode(SCREEN);
  for (int i=0; i<256; i++) {
    bytes[i] = (byte)i;
  }
}

void draw() {
  if (cset_num_atual == cset_num) return;
  cset_num_atual = cset_num;
  background(255);
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
  preencher(cset_num);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      cset_num--;
    } else if (keyCode == RIGHT) {
      cset_num++;
    } 
  };
  if (cset_num >= cset_names.length) {
    cset_num = 0;
  }
  else if (cset_num < 0) {
    cset_num = cset_names.length-1;
  }
}

void preencher(int cset_num) {
  String cset_name = cset_names[cset_num];
  CharBuffer letras = CharBuffer.allocate(256);
  textFont(sans);
  fill(0);
  textAlign(LEFT);
  text(cset_name, width-LATERAL+CEL/4, CEL*(cset_num+1));  
  cset = Charset.forName(cset_name);
  //letras = cset.decode(ByteBuffer.wrap(bytes));
  decoder = cset.newDecoder();
  decoder.onUnmappableCharacter(CodingErrorAction.IGNORE);
  CoderResult decoder_res = decoder.decode(ByteBuffer.wrap(bytes), letras, true);
  grade();
  fill(0);
  textFont(serif, 32);
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
  for (int i=1; i<=17; i++) {
    line(CEL, i*CEL, 17*CEL, i*CEL);
    line(i*CEL, CEL, i*CEL, 17*CEL);
  }
}
