public class Bullet{
  private float bX;
  private float bY;
  
  public Bullet(float xcor, float ycor){
    bX = xcor;
    bY = ycor;
  }public void setX(float x){
    bX = x;
    background(background);
    rect(bX, bY, 30, 30);
    fill(255,255,102);
  }
  
  public void setY(float y){
    bY = y;
    background(background);
    rect(bX, bY, 30, 30);
    fill(255,255,102);
  }
  
  public void addToX(int x){
    bX += x;
    background(background);
    rect(bX, bY, 30, 30);
    fill(255,255,102);
  }
  
}
