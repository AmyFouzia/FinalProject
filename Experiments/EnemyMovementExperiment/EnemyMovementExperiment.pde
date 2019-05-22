import java.lang.Math; 
int x = 0;
int y = 0;

void setup() {
  size(400 ,640); 
  noStroke(); 
}

void enemy(int xcor, int ycor)
{
  rect(xcor, ycor, 26, 26);
}

void draw() { 
  background(51);
  y += random(1,5);
  
  for (int i = 70; i <= 350; i += 70)
  {
    enemy(i, y);
    
    if(y > 600){ 
    i = 70;
    y = 0;
    }
  }
  
}