public class Enemy extends Thing{
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
  
  public void addToY(int y){
    
    eY += y;
    image(enemy, eX, eY, Size, Size);
  }

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
