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
ArrayList<Enemy> Enemies = new ArrayList<Enemy>();

void setup() {
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
      character.die();
    }
  }

  character.move();
  //if(hitting enemy){game over screen}
  

  //how will they die if every enemy is one of five?
  //kill dead ones and respawn all at start of round
  //var MODE turns invisible and harmless
  

}
