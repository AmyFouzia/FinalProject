import java.lang.Math; 
int enemyX = 0;
int enemyY = -20;
float easeX;
float easeY;
float easing = 1.5;

void setup() {
  size(400 ,1000); 
  noStroke(); 
}

void enemy(int xcor, int ycor)
{
  rect(xcor, ycor, 26, 26);
}

void draw() { 
  background(51);
  
  //enemy spawn
  enemyY += random(1,5);
  
  for (int i = 50; i <= 350; i += 70)
  {
    enemy(i, enemyY);
    
    if(enemyY > 1000){ 
    i = 50;
    enemyY = -20;
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
  
  //collision
  //enemy is 26*26
  //character is d = 26, r = 13
  //http://www.jeffreythompson.org/collision-detection/circle-rect.php
 
}