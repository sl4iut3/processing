
import processing.net.*;

public class ControleurReseau {

  private ArrayList<Balle> tabBalles;
  private Server serveur;

  public ControleurReseau(PApplet parent, ArrayList tabBalles) {
    this.tabBalles=tabBalles;
    serveur = new Server(parent, 5555);
  }

  public void ajoute (Balle b) { 
    tabBalles.add(b);
  }
  public void makeJob() {
    // teste la connexion d'un client
    Client c=serveur.available();
    if (c!=null) { // y a un client  !!!
      String msg=c.readString();
      String mots[]=msg.split("=");
      float valeur=float(mots[1]);
      if (mots[0].compareTo("r")==0) {                        // ex: r=10
        chgt_rayon(valeur);
      }
      if (mots[0].compareTo("cr")==0) {                        // ex: cr=10
        chgt_rouge(valeur);
      }
      if (mots[0].compareTo("alea")==0) {                      // ex: alea
        alea();
      }
    }
  }

  public void chgt_rayon(float rayon) {        
    for (int i=0; i<tabBalles.size(); i++) {
      tabBalles.get(i).setRayon(rayon);
    }
  }
  public void chgt_rouge(float rouge) {        
    for (int i=0; i<tabBalles.size(); i++) {
      tabBalles.get(i).setRouge(rouge);
    }
  }
  public void alea() {        
    for (int i=0; i<tabBalles.size(); i++) {
      tabBalles.get(i).alea();
    }
  }

}