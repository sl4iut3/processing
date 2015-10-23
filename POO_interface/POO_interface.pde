interface Dot {
  void move();
  void display();
}

/** class
*/
class CircleDot implements Dot {
  float x = 50;
  float y = 50;

  void move() {
    x = x + random(-1, 1);
  }

  void display() {
    ellipse(x, y, 16, 16);
  }
}

class SquareDot implements Dot {
  float x = 50;
  float y = 50;


  void move() {
    y = y + random(-1, 1);
  }

  void display() {
    rect(x, y, 16, 16);
  }
}

Dot d;
Tyty tt;


void setup() {
  size(400,300);
}

void draw() {
  d=new SquareDot();
  d.display();
}