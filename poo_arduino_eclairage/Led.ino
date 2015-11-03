

/***********************************
 * classe Led
 **********************************/

class Led {

private :
  //attributs
  boolean estAllume;
  int pin;

  // méthode privée pour positionner la patte en sortie
  void patteEnSortie() {
    pinMode(pin,OUTPUT);
  }    

public: 
  Led() {
    pin=13;
    patteEnSortie();
  }
  Led(int p) {
    pin=p;
    patteEnSortie();
  }
  virtual void allumer() {
    estAllume=true;
    digitalWrite(pin,HIGH);
  }
  virtual void eteindre() {
    estAllume=false;
    digitalWrite(pin,LOW);
  }
  void inverser() {
    if (estAllume) eteindre();
    else allumer();
  }
  void bip() {
    inverser(); 
    delay(100); 
    inverser(); 
    delay(100);
  }

  void bip(int n) {
    for (int i=0;i<n;i++) bip();
  }

} 
;









