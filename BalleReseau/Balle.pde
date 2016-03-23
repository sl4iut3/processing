
class Balle {
  // attributs
  private Vecteur2D position;
  private Vecteur2D vitesse;
  private Vecteur2D espace;
  private float rayon;
  private float rouge;
  private float vert;
  private float bleu;

  // constructeur
  Balle(Vecteur2D p, Vecteur2D vitesse, Vecteur2D espace, float rayon) {
    this.position=p;
    this.vitesse=vitesse;
    this.espace=espace;
    this.rayon=rayon;
  }

  // constructeur surchargé
  Balle(Vecteur2D espace) {
    this.espace=espace;
    this.position=new Vecteur2D(random(espace.getX()), random(espace.getY()));
    this.vitesse=new Vecteur2D(5+random(10), 5+random(10));
    this.rayon=random(50);
    this.rouge=random(255);
  }

  /** deplacer(): déplace la forme
   */
  public void deplacer() {
    position.add(vitesse);
  }
  /** tester_rebonds(): teste les rebonds
   */
  public void tester_rebonds() {
    tester_rebonds_v1();
  }
  /* 1ière version 
   */
  private void tester_rebonds_v1() {
    float x=position.getX();
    float y=position.getY();
    if ((x<0)||(x>espace.getX())) {
      vitesse.setX(-vitesse.getX());
    }
    if ((y<0)||(y>espace.getY())) {
      vitesse.setY(-vitesse.getY());
    }
  }

  public void afficher() {
    fill(rouge, vert, bleu);
    ellipse(position.getX(), position.getY(), rayon, rayon);
  }

  /** go(): permet d'afficher, de déplacer et de tester les rebonds
   */
  public void go() {
    this.afficher();
    this.deplacer() ;
    this.tester_rebonds();
  }

  public void setRayon(float rayon) {
    this.rayon=rayon;
  }
  public void setRouge(float v) {
    this.rouge=v;
  }

  public void alea() {
    this.rayon=random(50);
    this.rouge=random(255);
    this.vert=random(255);
    this.bleu=random(255);
  }
  
}