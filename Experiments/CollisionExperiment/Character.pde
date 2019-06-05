public class Character{
  PImage player;
  private float eX;
  private float eY;
  private float easing;
  
  public Character(float e, String file){
    easing = e;
    player = loadImage(file);
  }
  
  public void move() {
    float targetX = mouseX;
    float targetY = mouseY;

    PVector d = new PVector(targetX - eX, targetY - eY);
    if (abs(d.x) > 1 || abs(d.y) > 1) {
      d.normalize();
      eX += d.x*easing;
      eY += d.y*easing;
    }
    
    imageMode(CENTER);
    image(player, eX, eY, 75, 75);
  }
  
  public boolean containsPoint(int X, int Y){
    return  X >= eX &&
            X <= eX + enemy.width &&
            Y >= eY &&
            Y <= eY + enemy.height;
  }
  
  public boolean isAlive(Enemy enemy){
    //if(isHitting(enemy)){return false;}
    return true;
  }
  
  public void die(){
    background(51);
    textSize(32);
    text("game over", 10, 30); 
    fill(0, 102, 153);
  }
  
}
