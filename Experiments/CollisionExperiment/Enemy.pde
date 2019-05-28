public class Enemy{

  private int enemyX;
  private int enemyY;
  
  public Enemy(int xcor, int ycor, int size){
    enemyX = xcor;
    enemyY = ycor;
    rect(xcor, ycor, size, size);
  }
  
  public int getX(){
    return enemyX;
  }
  
  public int getY(){
    return enemyY;
  }
  
  public void setX(int x){
    enemyX = x;
  }
  
  public void setY(int y){
    enemyY = y;
  }
  
    public void addToX(int x){
    enemyX += x;
  }
  
  public void addToY(int y){
    enemyY += y;
  }
  
  public void move(){
    for (int i = enemyX; i <= 350; i += 70){
      enemyY += 1;
    
      if(enemyY > 1000){ 
        enemyX = (int)random(10,100);
        enemyY = -20;
       }
     }
  }
}