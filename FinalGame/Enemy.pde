public class Enemy{
  PImage enemy;
  private int eX;
  private int eY;
  int Size;
  
  public Enemy(int xcor, int ycor, int size, String file){
    eX = xcor;
    eY = ycor;
    Size = size;
    enemy = loadImage(file);
  }
  
  public int getX(){
    return eX;
  }
  
  public int getY(){
    return eY;
  }
  
  public void setX(int x){
    eX = x;
    background(background);
    image(enemy, eX, eY, Size, Size);
  }
  
  public void setY(int y){
    eY = y;
    background(background);
    image(enemy, eX, eY, Size, Size);
  }
  
  public void subtractFromX(int x){
    eX -= x;
    image(enemy, eX, eY, Size, Size);
  }
  
  public void subtractFromY(int Y){
    eY -= Y;
    image(enemy, eX, eY, Size, Size);
  }
  
  public void addToY(int y){
    
    eY += y;
    image(enemy, eX, eY, Size, Size);
  }

  public boolean isHitting(Character Player){
    if(Player.containsPoint(this.eX, this.eY)){return true;}
    return false;
  }
  
  public boolean isAlive(Enemy bullet){
    //if(isHitting(bullet)){return false;}
    return true;
  }
  
  
}
