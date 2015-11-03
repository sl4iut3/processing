
PhotoR ldr=PhotoR(A5);
Led l,l13;
boolean flag;

void setup() {
  l=Led_inversee(5);
  l13=Led();
  Serial.begin(9600);
}


void loop() {
  if (ldr.lireValeur()<600)   flag=!flag;
  if (flag) {
    l.bip(3);
  }
  l13.bip(5);
  Serial.println(ldr.lireValeur());
  delay(1000);
}


