
public class Canon {
  private float tx;
  private float ty;
  private float x;

  Canon(float tx, float ty) {
    this.tx=tx;
    this.ty=ty;
    this.x=tx/2;
  }
  Canon(float x, float tx, float ty) {
    this.tx=tx;
    this.ty=ty;
    this.x=x;
  }

  public void display() {
    fill(100, 100, 100);
    rect(x-5, ty-30, 10, 30);
  }
  public void feu() {
    line(x, ty-30, x, 0);
  }
  public float getX() { 
    return x;
  }
}