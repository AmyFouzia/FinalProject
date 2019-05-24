public class Enemy{

  private int enemyX = 0;
  private int enemyY = -20;
  
  public Enemy(int xcor, int ycor, int size){
    rect(xcor, ycor, size, size);
  }
  
  public int getX(){
    return enemyX;
  }
  
  public int getY(){
    return enemyY;
  }
  
  public void setX(int x){
    enemyX += x;
  }
  
  public void setY(int y){
    enemyY += y;
  }
  
}