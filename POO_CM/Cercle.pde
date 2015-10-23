
class Cercle extends Forme {
  // attributs
  private float rayon;

  /** Constructeur
   */
  Cercle(Vecteur2D p, Vecteur2D v, Vecteur2D e, float rayon) {
    super(p, v, e);
    this.rayon=rayon;
  }
  /** Constructeur simplifié
   */
  Cercle(Vecteur2D e, float rayon) {
    super(e);
    this.rayon=rayon;
  }
  /** afficher() : affiche le cercle 
   */
  void afficher() {
    ellipse(position.getX(), position.getY(), rayon, rayon);
  }
  /** getPHG(): retourne les coordonnées (sous forme d'un Vecteur2D) 
   du point en haut à gauche
   */
  Vecteur2D getPHG() {
    return position.plus(-rayon/2);
  }
  /** getPBD(): retourne les coordonnées (sous forme d'un Vecteur2D) 
   du point en bas à droite
   */
  Vecteur2D getPBD() {
    return position.plus(rayon/2);
  }
}