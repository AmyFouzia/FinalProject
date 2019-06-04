public class Character{
  PImage player;
  private float easeX;
  private float easeY;
  private float easing;
  private float testX = easeX;
  private float testY = easeY;
  
  public Character(float e, String file){
    easing = e;
    player = loadImage(file);
  }
  
  public void move(){
    float targetX = mouseX;
    float dx = targetX - easeX;
    easeX += dx * easing;
  
    float targetY = mouseY;
    float dy = targetY - easeY;
    easeY += dy * easing;
  
    image(player, easeX, easeY, 75, 75);
  }
  
  
}
