
/***********************************
 * classe Led
 **********************************/

class Led_inversee: 
public Led {
public:
  Led_inversee(int n): 
  Led(n) {
  }
  void allumer() {
    Led::eteindre();
  }
  void eteindre() {
    Led::allumer();
  }
};



