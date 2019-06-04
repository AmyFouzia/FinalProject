import java.lang.Math; 
import java.util.*;
//enemy spawn
Enemy newEnemy1;
Enemy newEnemy2;
Enemy newEnemy3;
Enemy newEnemy4;
Enemy newEnemy5;
Enemy newEnemy6;
Enemy newEnemy7;
Character character;
PImage background;

void setup() {
  List Enemies = new ArrayList();
  Enemies.add(newEnemy1 = new Enemy(1020, 50, 50, "enemy.png"));
  Enemies.add(newEnemy2 = new Enemy(1020, 120, 50, "enemy.png"));
  Enemies.add(newEnemy3 = new Enemy(1020, 190, 50, "enemy.png"));   
  Enemies.add(newEnemy4 = new Enemy(1020, 260, 50, "enemy.png")); 
  Enemies.add(newEnemy5 = new Enemy(1020, 330, 50, "enemy.png")); 
  Enemies.add(newEnemy6 = new Enemy(1020, 400, 50, "enemy.png"));
  Enemies.add(newEnemy7 = new Enemy(1020, 470, 50, "enemy.png")); 
  
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
  
  character = new Character(1.5, "player.png");
  character.move();
  // add same code for other enemies
  //how will they die if every enemy is one of five?
  

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
