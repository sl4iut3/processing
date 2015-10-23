
Lampe[] l=new Lampe[3];
Commutateur c;
Bouton b;

void setup() {
  size(400, 300) ;
  background(0);
  l[0]=new Lampe(50);
  l[1]=new Lampe(100);
  l[2]=new Lampe(100);
  c=new Commutateur(l);
  b=new Bouton(c);
}

void draw() {
}

void keyPressed() {
  if (key=='a') b.appuyer();
}