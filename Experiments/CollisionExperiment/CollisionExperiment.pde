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
  frameRate(30);
}

public void enemy(int xcor, int ycor, int size){
  rect(xcor, ycor, size, size);
}

void draw() { 
  background(51);
  
  //enemy spawn
  enemyY += random(1,5);
  
  for (enemyX = (int)random(45, 51); enemyX <= 350; enemyX += random(65, 71))
  {
    enemy(enemyX, enemyY, 26);
    
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

  boolean hit = circleRect(easeX, easeY, 13, enemyX, enemyY, 26, 26);
  if(hit){ fill(255,150,0);}
  
}

boolean circleRect(float cx, float cy, float radius, float rx, float ry, float rw, float rh) {

  // temporary variables to set edges for testing
  float testX = cx;
  float testY = cy;

  // which edge is closest?
  if (cx < rx)         testX = rx;      // test left edge
  else if (cx > rx+rw) testX = rx+rw;   // right edge
  if (cy < ry)         testY = ry;      // top edge
  else if (cy > ry+rh) testY = ry+rh;   // bottom edge

  // get distance from closest edges
  float distX = cx-testX;
  float distY = cy-testY;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the radius, collision!
  if (distance <= radius) {
    return true;
  }
  else {
    fill(255,255,255);
  }
  return false;
}