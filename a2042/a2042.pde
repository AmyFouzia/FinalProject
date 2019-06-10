import java.lang.Math; 
import java.util.*;
boolean shoot = false;
Character character;
PImage background;
PImage gameOver;
PImage start;
ArrayList<Enemy> Enemies = new ArrayList<Enemy>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
int score = 0;
int numKilled = 0;
String Mode = "start";

void setup() {
  Enemies.add(new Enemy(1020, 50, 50, "enemy.png"));
  Enemies.add(new Enemy(1020, 120, 50, "enemy.png"));
  Enemies.add(new Enemy(1020, 190, 50, "enemy.png"));   
  Enemies.add(new Enemy(1020, 260, 50, "enemy.png")); 
  Enemies.add(new Enemy(1020, 330, 50, "enemy.png")); 
  Enemies.add(new Enemy(1020, 400, 50, "enemy.png"));
  Enemies.add(new Enemy(1020, 470, 50, "enemy.png")); 
  Enemies.add(new Enemy(1020, 540, 50, "enemy.png")); 
  Enemies.add(new Enemy(1050, 80, 50, "enemy.png"));
  Enemies.add(new Enemy(1050, 140, 50, "enemy.png"));
  Enemies.add(new Enemy(1050, 210, 50, "enemy.png"));   
  Enemies.add(new Enemy(1050, 280, 50, "enemy.png")); 
  Enemies.add(new Enemy(1050, 350, 50, "enemy.png")); 
  Enemies.add(new Enemy(1050, 420, 50, "enemy.png"));
  Enemies.add(new Enemy(1050, 490, 50, "enemy.png")); 
  Enemies.add(new Enemy(1050, 560, 50, "enemy.png"));
  
  size(1000, 563); 
  background = loadImage("background.gif");
  gameOver = loadImage("game-over.png");
  start = loadImage("start-game.png");
  noStroke();  
  
  character = new Character(2.5, "player.png");
  
}

void draw() { 
  if(Mode == "start"){
    
    fill(255, 44, 44);
    textSize(32);
    start.resize(1000, 563);
    background(start);
    text("Press Any Key To Play", 300, 35);
    
    if(keyPressed){ Mode = "game"; }
  }
  
  if(Mode == "game"){
    background(background);
  
    for(int e = 0; e < Enemies.size(); e++){
      Enemies.get(e).subtractFromX((int)random(3, 8));
      Enemies.get(e).subtractFromY((int)random(0, 3));
      Enemies.get(e).addToY((int)random(0, 3));
    
      if(Enemies.get(e).getX() < -20){
        Enemies.get(e).setX(1020);
      }
    
      if(Enemies.get(e).isHitting(character)){
        Mode = "end";
      }
    
      character.move();
    }
  
    for (int b = 0; b < bullets.size(); b++) {
      bullets.get(b).setX(bullets.get(b).getX() +10);

      if (bullets.get(b).getX() > 1200) {
        bullets.remove(bullets.get(b));
        b--;
      } else {
        for (int e = 0; e < Enemies.size(); e++) {
          if (Enemies.get(e).isHitting(bullets.get(b))) {
            score += 10;
            numKilled += 1;
            Enemies.remove(Enemies.get(e));
            e--;
          }
          if(Enemies.size() < 15){
            Enemies.add(new Enemy(1020, (int)random(0, 563), 50, "enemy.png")); 
          }
        }
      }
    }
  }
  
  if(Mode == "end"){
    for(int e = 0; e < Enemies.size(); e++){
      Enemies.get(e).setX(1020);
    }
    
    fill(255, 44, 44);
    gameOver.resize(1000, 563);
    background(gameOver);
    textSize(22);
    text("Click To Return To Start", 375, 25);
    fill(0);
    rect(250, 540, textWidth("Score: " + score), 22);
    fill(255, 44, 44);
    text("Score: " + score , 250, 560); 
    fill(0);
    rect(550, 540, textWidth("Number of Enemies Killed: " + numKilled), 22);
    fill(255, 44, 44);
    text("Number of Enemies Killed: " + numKilled, 550, 560); 
    
    if(mousePressed){
      score = 0;
      numKilled = 0;
      Mode = "start";
    }
  }
}

void mousePressed() {
  Bullet bullet = new Bullet(character.getX(), character.getY());
  bullets.add(bullet);
}
