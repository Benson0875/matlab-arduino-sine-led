int ledPin = 9;
void setup() {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
}
void loop() {
  if (Serial.available() > 0) {
    int v = Serial.parseInt();
    while (Serial.available()>0) Serial.read();
    int duty = constrain(v, 0, 255);
    analogWrite(ledPin, duty);
    int inverted = 255 - duty;
    Serial.println(inverted);
  }
  delay(1);
}