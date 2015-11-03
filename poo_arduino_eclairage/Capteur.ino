
/***********************************
 * classe (abstraite ??) Capteur
 **********************************/

class Capteur {

protected: 
  // attribut
  int pin;  // patte de connexion du capteur

public:
  // constructeur par défaut: patte A0
  Capteur() {
    pin=A0;
    pinMode(pin,INPUT);
  }
  // surcharge du constructeur
  Capteur(int p) {
    pin=p;
    pinMode(pin,INPUT);
  }
  // méthode virtuelle pure: comment faire lireValeur() pour un capteur générique??
  virtual int lireValeur() = 0;
} 
;





