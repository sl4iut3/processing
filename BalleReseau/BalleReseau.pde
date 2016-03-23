
ControleurReseau cr;
ArrayList<Balle> tabBalles=new ArrayList<Balle>();

Vecteur2D espace=new Vecteur2D(400, 400);

void setup() {
  size(400, 400);
  cr=new ControleurReseau(this, tabBalles);
  for (int i=0; i<20; i++) {
    tabBalles.add(new Balle(espace));
  }
}

void draw() {
  background(0);
  cr.makeJob();
  for (int i=0; i<20; i++) {
    tabBalles.get(i).go();
  }
}