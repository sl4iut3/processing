
public class Forme {
  private float x, y, w, h;
  private float vx;
  private int r, v, b;
  private boolean touche;
  private float tx;
  private int debut=0;

  Forme(float x, float y, int r, int v, int b, float vx, float tx) {
    this.x=x;
    this.y=y;
    this.r=r;
    this.v=v;
    this.b=b;
    this.tx=tx;
    this.vx=vx;
    this.w=60;
    this.h=20;
    this.touche=false;
  }

  public float getX() { 
    return x;
  }
  public float getY() { 
    return y;
  }
  public void move() {
    //if (estTouche()) return;
    float tmp=x+vx;
    if ((tmp<0)||((tmp+w)>tx) ) {
      vx=-vx;
      inverse_couleur();
    }
    x+=vx;
  }
  private void inverse_couleur() {
    r=255-r;
    v=255-v;
    b=255-b;
  } 

  public void display() {
    if (estTouche()) return;
    fill(r, v, b);
    rect(x, y, w, h);
  }

  public void traceZ(Forme f) {
    stroke(0, 0, 255);
    line(x+w, y+h, f.getX(), f.getY());
  }

  public void testeSiTouche(Canon c) {
    if ( (x<c.getX())&&( (x+w)>c.getX()) ) {
      touche=true;
      debut=millis();
    }
  }
  public boolean estTouche() {
    if (touche==false) return false;
    if ((millis()-debut)<1000) return true;
    else {
      debut=0;
      touche=false;
      return false;
    }
  }
}