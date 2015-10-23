

public class Lampe {
  private boolean estAllumee;
  private int puissance;
  private boolean modeGraphique;
  private float x;
  private float y;

  Lampe(int puissance) {
    this.puissance=puissance;
    this.estAllumee=false;
    this.modeGraphique=false;
  }

  Lampe(int puissance, float x, float y) {
    this.puissance=puissance;
    this.estAllumee=false;
    this.modeGraphique=true;
    this.x=x;
    this.y=y;
  }

  public void allumer() {
    this.estAllumee=true;
  }

  public void eteindre() {
    this.estAllumee=false;
  }

  public void display() {
    if (modeGraphique) {
      if (estAllumee)    fill(255, 255, 255); 
      else fill(0, 0, 0);
      stroke(255,0,0);
      ellipse(x, y, 20, 20);
    } else {
      print("Lampe de puissance "+this.puissance);
      if (estAllumee)    println("est allumée"); 
      else println("est éteinte");
    }
  }
}