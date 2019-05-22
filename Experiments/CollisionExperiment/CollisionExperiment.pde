import java.lang.Math; 
int x = 0;
int y = 0;
float easeX;
float easeY;
float easing = 1.5;

void setup() {
  size(400 ,640); 
  noStroke(); 
}

void enemy(int xcor, int ycor)
{
  rect(xcor, ycor, 26, 26);
}

void draw() { 
  background(51);
  
  //enemy spawn
  y += random(1,5);
  
  for (int i = 50; i <= 350; i += 70)
  {
    enemy(i, y);
    
    if(y > 600){ 
    i = 50;
    y = 0;
    }
  }
  
  //easing
  float targetX = mouseX;
  float dx = targetX - easeX;
  easeX += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - easeY;
  easeY += dy * easing;
  
  ellipse(easeX, easeY, 26, 26);
}