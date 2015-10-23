
public class Bouton {
  private Commutateur c;

  Bouton(Commutateur c) {
    this.c=c;
  }

  public void appuyer() {
    c.etatSuivant();
  }
}