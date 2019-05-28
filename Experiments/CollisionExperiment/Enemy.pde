public class Enemy{

  private int enemyX;
  private int enemyY;
  int Size;
  
  public Enemy(int xcor, int ycor, int size){
    enemyX = xcor;
    enemyY = ycor;
    Size = size;
    rect(enemyX, enemyY, Size, Size);
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
  
  public boolean isAlive(){return true;}
  
  /*public void move(){ 
    //while(this.isAlive()){   
      
       while(this.getY() < 1000){
         this.addToY(1);
         
       } 
          
       if(this.getY() > 1000){ 
         this.setY(-20);
         
       }
       
    //}
  }/*
  
  
}