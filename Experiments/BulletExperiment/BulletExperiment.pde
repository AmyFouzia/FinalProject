import java.lang.Math; 
import java.util.*;
//enemy spawn
Enemy newEnemy1;
//Enemy newEnemy2;
Enemy newEnemy3;
//Enemy newEnemy4;
Enemy newEnemy5;
//Enemy newEnemy6;
Enemy newEnemy7;
Bullet bullet1;
Bullet bullet2;
Bullet bullet3;
Bullet bullet4;
Bullet bullet5;
Bullet bullet6;
Bullet bullet7;
Bullet bullet8;
Bullet bullet9;
boolean shoot = false;
Character character;
PImage background;
ArrayList<Enemy> Enemies = new ArrayList<Enemy>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

void setup() {
  Enemies.add(newEnemy1 = new Enemy(1020, 50, 50, "enemy.png"));
  //Enemies.add(newEnemy2 = new Enemy(1020, 120, 50, "enemy.png"));
  Enemies.add(newEnemy3 = new Enemy(1020, 190, 50, "enemy.png"));   
  //Enemies.add(newEnemy4 = new Enemy(1020, 260, 50, "enemy.png")); 
  Enemies.add(newEnemy5 = new Enemy(1020, 330, 50, "enemy.png")); 
  //Enemies.add(newEnemy6 = new Enemy(1020, 400, 50, "enemy.png"));
  Enemies.add(newEnemy7 = new Enemy(1020, 470, 50, "enemy.png")); 
  
  bullets.add(bullet1 = new Bullet(-20, -20));
  bullets.add(bullet2 = new Bullet(-20, -20));
  bullets.add(bullet3 = new Bullet(-20, -20));
  bullets.add(bullet4 = new Bullet(-20, -20));
  bullets.add(bullet5 = new Bullet(-20, -20));
  bullets.add(bullet6 = new Bullet(-20, -20));
  bullets.add(bullet7 = new Bullet(-20, -20));
  bullets.add(bullet8 = new Bullet(-20, -20));
  bullets.add(bullet9 = new Bullet(-20, -20));
  
  size(1000, 563); 
  background = loadImage("background.gif");
  noStroke();  
  
  character = new Character(2.5, "player.png");
  
}

void draw() { 
  background(background);
  
  for(Enemy enemy : Enemies){
    enemy.subtractFromX((int)random(3, 8));
    
    if(enemy.getX() < -20){
      enemy.setX(1020);
    }
    
    if(enemy.isHitting(character)){
      background(51);
      textSize(32);
      text("game over", 10, 30); 
      fill(0, 102, 153);
      noLoop();
    }
    
    character.move();
  }
  
  if(shoot){
    for(Bullet bullet : bullets){
       bullet.setX(character.getX());
       bullet.setY(character.getY());
       
       bullet.addToX(10);
         if (bullet.getX() > 1000){
           bullet.setX(-20);
         }    
     }
  }
  
}


void mousePressed() {
  shoot = true;
}
