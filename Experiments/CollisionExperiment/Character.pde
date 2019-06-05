public class Character extends Thing{
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
  
  
}
