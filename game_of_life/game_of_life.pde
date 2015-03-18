int din=20;

boolean [][] cells = new boolean [din][din];


void setup() { 
  size (400, 400); 
  frameRate(10);
  losujKomorki();
}

void draw() { 
  for (int row = 0; row<din; row++){
  for(int col=0; col<din; col++) {
    if (cells[col][row]) fill(255); else fill(80);
    rect(width/din * col, height/din * row, width/din, height/din); } }

  }
 
 void losujKomorki() {
   for(int row = 0; row<din; row++) {
     for(int col = 0; col<din; col++) {
       cells[col][row] = losuj(); } } }
 
 boolean losuj(){
   float r = random(1000); if(r>500) return true; return false; }

void keyPressed() { if(key=='r') losujKomorki();
 
}

