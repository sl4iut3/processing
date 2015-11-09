import processing.serial.*;

// The serial port:
Serial myPort;       


boolean flag=false;

void setup() {
  // List all the available serial ports:
  printArray(Serial.list());

  // Open the port you are using at the rate you want:
  myPort = new Serial(this, Serial.list()[0], 9600);

}

void draw() {
}

void keyPressed() {
  if (key=='f') {
    if (flag) myPort.write('a');
    else myPort.write('e');
    flag=!flag;
  }
}