public class Enemy{
  PImage enemy;
  private int enemyX;
  private int enemyY;
  int Size;
  
  public Enemy(int xcor, int ycor, int size, String file){
    enemyX = xcor;
    enemyY = ycor;
    Size = size;
    enemy = loadImage(file);
  }
  
  public int getX(){
    return enemyX;
  }
  
  public int getY(){
    return enemyY;
  }
  
  public void setX(int x){
    enemyX = x;
    background(background);
    image(enemy, enemyX, enemyY, Size, Size);
  }
  
  public void setY(int y){
    enemyY = y;
    background(background);
    image(enemy, enemyX, enemyY, Size, Size);
  }
  
  public void subtractFromX(int x){
    enemyX -= x;
    image(enemy, enemyX, enemyY, Size, Size);
  }
  
  public void addToY(int y){
    
    enemyY += y;
    image(enemy, enemyX, enemyY, Size, Size);
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
  }
  
    public void move(){
    for(int y = 1; y < 1000; y++){
      if(this.getY() < 1000){
        this.addToY(1);
      }else{
        y=1;
        enemyY=-20;
      }
    }
    
  }*/
  
  
}
