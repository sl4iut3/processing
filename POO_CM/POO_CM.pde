
Vecteur2D espace=new Vecteur2D(800, 700);

Forme f;

FormeComposee fc=new FormeComposee();

FormeInterface fi1, fi2;

void settings() {
  size((int)espace.getX(), (int)espace.getY());
}


void setup() {
  // on rajoute des Forme dans une FormeComposee (max 100!!!)
  for (int i=0; i<150; i++) {
    // une Forme peut contenir un Rectangle, l'inverse n'est pas vrai
    f=new Rectangle(espace, 20, 10);
    fc.add(f);
    // une Forme peut contenir un Cercle, l'inverse n'est pas vrai
    f=new Cercle(espace, 3+random(30));
    fc.add(f);
  }
  // une Forme peut contenir un Rectangle
  f=new Rectangle(new Vecteur2D(100,100), new Vecteur2D(7,7),espace, 30, 80);
  // une FormeInterface peut représenter tout objet implémentant cette interface
  // ici, une FormeComposee
  fi1=fc;
  // une FormeInterface peut représenter tout objet implémentant cette interface
  // ici, un Cercle
  fi2=new Cercle(espace, 80);
}

void draw() {
  background(100);
  f.go();
  fi1.go();
  fi2.go();
}