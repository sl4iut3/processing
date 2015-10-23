
Lampe[] l=new Lampe[3];
Commutateur c;
Bouton b;
BoutonReseau br;

void setup() {
  size(400, 300) ;
  l[0]=new Lampe(50,100,50);
  l[1]=new Lampe(100,100,100);
  l[2]=new Lampe(100,100,150);
  c=new Commutateur(l,this);
  b=new Bouton(c);
  br=new BoutonReseau(this);
}

void draw() {
  background(0);
  c.lireReseau();
  l[0].display();
  l[1].display();
  l[2].display();
}

void keyPressed() {
  if (key=='a') { 
    b.appuyer();
  }
    if (key=='n') { 
    br.appuyer();
  }
}