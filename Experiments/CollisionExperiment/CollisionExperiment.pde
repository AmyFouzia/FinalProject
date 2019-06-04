import java.lang.Math; 
float easeX;
float easeY;
float easing = 1.5;
float testX = easeX;
float testY = easeY;
//enemy spawn
Enemy newEnemy1 = new Enemy(1020, 50, 26, "enemy.png");
Enemy newEnemy2 = new Enemy(1020, 120, 26, "enemy.png");
Enemy newEnemy3 = new Enemy(1020, 190, 26, "enemy.png");
Enemy newEnemy4 = new Enemy(1020, 260, 26, "enemy.png");
Enemy newEnemy5 = new Enemy(1020, 330, 26, "enemy.png");
Enemy newEnemy6 = new Enemy(1020, 400, 26, "enemy.png");
Enemy newEnemy7 = new Enemy(1020, 470, 26, "enemy.png");
PImage background;

void setup() {
  size(1000, 563); 
  background = loadImage("background.gif");
  noStroke();  
}

void draw() { 
  background(background);
  
  newEnemy1.subtractFromX((int)random(3, 8));
    
  if(newEnemy1.getX() < -20){ 
    newEnemy1.setX(1020);
  }
  
  newEnemy2.subtractFromX((int)random(3, 8));
    
  if(newEnemy2.getX() < -20){ 
    newEnemy2.setX(1020);
  }
  
  newEnemy3.subtractFromX((int)random(3, 8));
    
  if(newEnemy3.getX() < -20){ 
    newEnemy3.setX(1020);
  }
  
  newEnemy4.subtractFromX((int)random(3, 8));
    
  if(newEnemy4.getX() < -20){ 
    newEnemy4.setX(1020);
  }
  
  newEnemy5.subtractFromX((int)random(3, 8));
    
  if(newEnemy5.getX() < -20){ 
    newEnemy5.setX(1020);
  }
  
  newEnemy6.subtractFromX((int)random(3, 8));
    
  if(newEnemy6.getX() < -20){ 
    newEnemy6.setX(1020);
  }
  
  newEnemy7.subtractFromX((int)random(3, 8));
    
  if(newEnemy7.getX() < -20){ 
    newEnemy7.setX(1020);
  }
  
  // add same code for other enemies
  //how will they die if every enemy is one of five?
  
  //enemyY += random(1,5);

  /*for (enemyX = (int)random(45, 51); enemyX <= 350; enemyX += random(65, 71))
  {
    enemy(enemyX, enemyY, 26);

    if(enemyY > 1000){ 
    enemyX = 50;
    enemyY = -20;
    }
  }*/
  
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

 // boolean hit = circleRect(easeX, easeY, 13, enemyX, enemyY, 26, 26);
  //if(hit){ fill(255,150,0);}

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
