class Vecteur2D {
  // attributs
  private float x;
  private float y;

  /**  Vecteur2D(float x, float y) : constructeur
   */
  Vecteur2D(float x, float y) {
    this.x=x; 
    this.y=y;
  }

  /** liste des getters/setters 
   */
  float getX() { 
    return x;
  }

  float getY() { 
    return y;
  }

  void setX(float x) { 
    this.x=x;
  }

  void setY(float y) { 
    this.y=y;
  }
  /** calculeNorme() : calcule la norme du vecteur
   */
  float calculeNorme() {
    return sqrt(x*x+y*y);
  }
  /** add(Vecteur2D p) : ajoute au vecteur courant le vecteur p
   ATTENTION: modifie le vecteur courant
   */
  void add(Vecteur2D p) {
    x+=p.getX();
    y+=p.getY();
  }
  /** multiply(float val) : multiplie le vecteur courant par le scalaire val
   ATTENTION: modifie le vecteur courant
   */
  void multiply(float val) {
    this.x*=val;
    this.y*=val;
  }
  /** divide(float val) : divise le vecteur courant par le scalaire val
   ATTENTION: modifie le vecteur courant
   */
  void divide(float val) {
    this.multiply(1/val);
  }
  /** plus(float valeur) : retourne un nouveau vecteur égal au vecteur courant 
   dont les coordonnées ont été augmentées de val
   REMARQUE: ne modifie pas le vecteur courant
   */
  Vecteur2D plus(float valeur) {
    return new Vecteur2D(x+valeur, y+valeur);
  }
  /** clone() : retourne un nouveau vecteur égal au vecteur courant
   */
  Vecteur2D clone() {
    return new Vecteur2D(x, y);
  }
}