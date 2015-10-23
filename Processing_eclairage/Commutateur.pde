
public class Commutateur {
  private int noEtape;
  private Lampe[] lampes;

  Commutateur(Lampe[] lampes) {
    this.lampes=lampes;
    noEtape=0;
  }

  public void etatSuivant() {
    if (noEtape<4) noEtape++; 
    else noEtape=0;
    switch (noEtape) {
    case 0: 
      lampes[0].eteindre();
      lampes[1].eteindre();
      lampes[2].eteindre(); 
      break;
    case 1:
      lampes[0].allumer(); 
      break;
    case 2: 
      lampes[0].eteindre();
      lampes[1].allumer(); 
      break;
    case 3:
      lampes[0].allumer(); 
      break;
    case 4: 
      lampes[0].eteindre();
      lampes[2].allumer(); 
      break;
    case 5:
      lampes[0].allumer(); 
      break;
    default: 
      noEtape=0;
    }
  }
}