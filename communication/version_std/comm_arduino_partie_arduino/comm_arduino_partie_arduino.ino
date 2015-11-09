

void setup() {
  Serial.begin(9600);
  pinMode(13,OUTPUT);
  digitalWrite(13,LOW);
}

void loop() {
  if (Serial.available()>0) {
    char c=Serial.read();
    if (c=='a') digitalWrite(13,HIGH);
    else digitalWrite(13,LOW);
  }
}



