
void settings(){
  size(400,300);
}

Forme f1,f2;
Canon c;

void setup() {
  f1=new Forme(10,100,255,0,0,10,400);
  f2=new Forme(300,200,0,255,0,-10,400);
  c=new Canon(400,300);
}

void draw() {
  background(0);
  c.display();
  f1.move();
  f1.display();
  f2.move();
  f2.display();
  f1.traceZ(f2);
}

void keyPressed() {
  if (key=='f') {
    c.feu();
    f1.testeSiTouche(c);
    f2.testeSiTouche(c);
  }
}