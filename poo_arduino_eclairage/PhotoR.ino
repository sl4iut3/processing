

/***********************************
 * classe PhotoR, 
 * spécialisation de Capteur
 **********************************/

class PhotoR : 
public Capteur {
public:
  // constructeur par défaut, photorésistance branchée sur A0
  PhotoR(): 
  Capteur() {
  }
  // surcharge du constructeur
  PhotoR(int p): 
  Capteur(p)
  {
  }
  // lecture de la mesure
  int lireValeur() {
    return analogRead(pin);
  }
} 
;





