

class Rectangle extends Forme {
  // attributs
  private float longueur;
  private float largeur;
  
  /** Constructeur
   */
  Rectangle(Vecteur2D p, Vecteur2D v, Vecteur2D e, float longueur, float largeur) {
    super(p, v, e);
    this.longueur=longueur;
    this.largeur=largeur;
  }
  /** Constructeur simplifié
   */  
  Rectangle(Vecteur2D e, float longueur, float largeur) {
    super(e);
    this.longueur=longueur;
    this.largeur=largeur;
  }
  /** afficher() : affiche le rectangle
   */  
  void afficher() {
    rect(position.getX(), position.getY(), longueur, largeur);
  }
  
  /** getPHG(): retourne les coordonnées (sous forme d'un Vecteur2D) 
   du point en haut à gauche
   */    
  Vecteur2D getPHG() {
    return position;
  }
  /** getPBD(): retourne les coordonnées (sous forme d'un Vecteur2D) 
   du point en bas à droite
   */  
  Vecteur2D getPBD() {
    Vecteur2D v=position.clone();
    v.add(new Vecteur2D(longueur,largeur));
    return v;
  }
}