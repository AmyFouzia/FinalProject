import java.lang.Math; 
float x = 0.0;
float y = 0.0;

void setup() {
  size(360 ,640); 
  noStroke();  
}

void draw() { 
  background(51);
  x += (int) Math.random() * 2 + 1; 
  //make it bounce off side
  //use translate?
  y += 1;
  rect(x, y, 66, 66);
}