void setup() {
  size(500 ,500);
}

void draw() {
  background(51);
  int scoreTracker = millis();
  noStroke();
  text((char)scoreTracker, 250, 250);
}


//https://forum.processing.org/one/topic/how-do-you-make-a-timer.html
//https://forum.processing.org/one/topic/timer-in-processing.html
//http://learningprocessing.com/examples/chp10/example-10-04-timer