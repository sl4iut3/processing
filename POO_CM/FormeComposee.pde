
class FormeComposee implements FormeInterface {
  // attributs 
  private Forme[] formes;                    // POLYMORPHISME
  private int cptForme;

  /** FormeComposee(): constructeur standard
   prépare un tableau de 100 cases
   */
  FormeComposee() {
    formes=new Forme[100];
    cptForme=0;
  }
  /** FormeComposee(int n): constructeur surchargé
   prépare un tableau de n cases
   */
  FormeComposee(int n) {
    formes=new Forme[n];
    cptForme=0;
  }
  /** add(Forme f) : rajoute une Forme dans la FormeComposee
   */
  void add(Forme f) {
    if (cptForme<formes.length) {
      formes[cptForme]=f;
      cptForme++;
    }
  }
  /** deplacer(): déplace toutes les Forme de la FormeComposee
   */
  void deplacer() {
    for (int i=0; i<cptForme; i++) {
      formes[i].deplacer() ;
    }
  }
  /** afficher(): affiche toutes les Forme de la FormeComposee
   */
  void afficher() {
    for (int i=0; i<cptForme; i++) {
      formes[i].afficher() ;
    }
  }
  /** tester_rebonds(): tester_rebonds pour toutes les Forme de la FormeComposee
   */

  void tester_rebonds() {
    for (int i=0; i<cptForme; i++) {
      formes[i].tester_rebonds() ;
    }
  }
  /** go(): appelle go() sur chacune des Forme de la FormeComposee
   */
  void go() {
    for (int i=0; i<cptForme; i++) {
      formes[i].go() ;
    }
  }
}