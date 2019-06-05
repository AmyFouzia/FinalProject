public class Character{
  PImage player;
  private float eX;
  private float eY;
  private float easing;
  
  public Character(float e, String file){
    easing = e;
    player = loadImage(file);
  }public float getX(){
    return eX;
  }
  
  public float getY(){
    return eY;
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
    if( X >= eX - 30 && X <= eX + 30 && 
        Y >= eY - 30 && Y <= eY + 30 ){return true;}
    return false;
  }
  
  public void shoot(){
    bullet.move();
  }
}
