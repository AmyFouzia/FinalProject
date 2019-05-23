import java.lang.Math; 
int enemyX = 0;
int enemyY = -20;
float easeX;
float easeY;
float easing = 1.5;
float testX = easeX;
float testY = easeY;

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
  
  for (enemyX = 50; enemyX <= 350; enemyX += 70)
  {
    enemy(enemyX, enemyY);
    
    if(enemyY > 1000){ 
    enemyX = 50;
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

  boolean hit = circleRect(easeX, easeY, enemyX, enemyY);
  
}

boolean circleRect(float easeX, float easeY, float enemyX, float enemyY) {

  // temporaenemyY variables to set edges for testing
  float testX = easeX;
  float testY = easeY;

  // which edge is closest?
  if (easeX < enemyX)         testX = enemyX;      // test left edge
  else if (easeX > enemyX+26) testX = enemyX+26;   // right edge
  if (easeY < enemyY)         testY = enemyY;      // top edge
  else if (easeY > enemyY+26) testY = enemyY+26;   // bottom edge

  // get distance from closest edges
  float distX = easeX-testX;
  float distY = easeY-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the radius, collision!
  if (distance <= 13) {
    return true;
  }
  return false;
}