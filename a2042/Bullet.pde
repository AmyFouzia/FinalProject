public class Bullet{
  private float bX;
  private float bY;
  
  public Bullet(float xcor, float ycor){
    bX = xcor;
    bY = ycor;
  }
  
  public float getX(){
    return bX;
  }
  
  public void setX(float x){
    
bX = x;
  
    fill(255,255,102);
    rect(bX, bY, 5, 5);
  }
  
  public void setY(float y){
    bY = y;
    fill(255,255,102);
    rect(bX, bY, 5, 5);
  }
  
  public void addToX(int x){
    bX += x;
    fill(255,255,102);
    rect(bX, bY, 5, 5);
  }
  
  public boolean containsPoint(int X, int Y){
    if( X >= bX - 20 && X <= bX + 20 && 
        Y >= bY - 20 && Y <= bY + 20 ){return true;}
    return false;
  }
  
}
