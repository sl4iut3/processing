
abstract class Forme implements FormeInterface {
  // attributs
  protected Vecteur2D position;
  protected Vecteur2D vitesse;
  protected Vecteur2D espace;

  // constructeur
  Forme(Vecteur2D p, Vecteur2D vitesse, Vecteur2D espace) {
    this.position=p;
    this.vitesse=vitesse;
    this.espace=espace;
  }
  // constructeur surchargé
  Forme(Vecteur2D espace) {
    this.espace=espace;
    this.position=new Vecteur2D(random(espace.getX()), random(espace.getY()));
    this.vitesse=new Vecteur2D(5+random(10), 5+random(10));
  }

  /** deplacer(): déplace la forme
   */
  public void deplacer() {
    position.add(vitesse);
  }
  /** tester_rebonds(): teste les rebonds
   */
  public void tester_rebonds() {
    tester_rebonds_v2();
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
  /* 2ième implémentation
   */
  private void tester_rebonds_v2() {
    if ( (getPHG().getX()<0)||(getPBD().getX()>espace.getX()) ) {      
      vitesse.setX(-vitesse.getX());
    }
    if ( (getPHG().getY()<0)||(getPBD().getY()>espace.getY()) ) {      
      vitesse.setY(-vitesse.getY());
    }
  }
  /** go(): permet d'afficher, de déplacer et de tester les rebonds
   */
  public void go() {
    this.afficher();
    this.deplacer() ;
    this.tester_rebonds();
  }

  /* méthodes abstraites, à implémenter dans les classes filles 
   */
  public abstract Vecteur2D getPHG(); 
  public abstract Vecteur2D getPBD(); 
  public abstract  void afficher();
}