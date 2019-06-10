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
int lives = 3;
String Mode = "start";
boolean hasDamaged = false;

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
    text("Click Anywhere To Play", 300, 35);
    
    if(mousePressed){ Mode = "game"; }
  }
  
  if(Mode == "game"){
    background(background);
    fill(255, 44, 44);
    textSize(22);
    //text("Lives:" + lives, 20, 35);
  
    for(Enemy enemy : Enemies){
      enemy.subtractFromX((int)random(3, 8));
    
      if(enemy.getX() < -20){
        enemy.setX(1020);
      }
    
      if(enemy.isHitting(character)){
        Mode = "end";
        //hasDamaged = true;
      }
      /*if (hasDamaged){
        lives--;
        hasDamaged = false;
        if(lives == 0){Mode = "end";}
      }*/
    
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
          if(Enemies.size() < 7){
            Enemies.add(new Enemy(1020, (int)random(0, 563), 50, "enemy.png")); 
          }
        }
      }
    }
  }
  
  if(Mode == "end"){
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
    
    if(mousePressed){Mode = "start";}
  }
}

void mousePressed() {
  Bullet bullet = new Bullet(character.getX(), character.getY());
  bullets.add(bullet);
}
