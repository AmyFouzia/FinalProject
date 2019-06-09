import java.lang.Math; 
import java.util.*;
boolean shoot = false;
Character character;
PImage background;
ArrayList<Enemy> Enemies = new ArrayList<Enemy>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

void setup() {
  Enemies.add(new Enemy(1020, 50, 50, "enemy.png"));
  Enemies.add(new Enemy(1020, 120, 50, "enemy.png"));
  Enemies.add(new Enemy(1020, 190, 50, "enemy.png"));   
  Enemies.add(new Enemy(1020, 260, 50, "enemy.png")); 
  Enemies.add(new Enemy(1020, 330, 50, "enemy.png")); 
  Enemies.add(new Enemy(1020, 400, 50, "enemy.png"));
  Enemies.add(new Enemy(1020, 470, 50, "enemy.png")); 
  Enemies.add(new Enemy(1020, 540, 50, "enemy.png")); 
  
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
  
  for (int b = 0; b < bullets.size(); b++){
    bullets.get(b).setX(bullets.get(b).getX() +10);
    
    if(bullets.get(b).getX() > 1200){
      bullets.remove(bullets.get(b));
      b--;
    }
    for(int e = 0; e < Enemies.size(); e++){
      if(Enemies.get(e).isHitting(bullets.get(b))){
        Enemies.remove(Enemies.get(e));
        e--;
      }
    }
  }
}


void mousePressed() {
  Bullet bullet = new Bullet(character.getX(), character.getY());
  bullets.add(bullet);
}
