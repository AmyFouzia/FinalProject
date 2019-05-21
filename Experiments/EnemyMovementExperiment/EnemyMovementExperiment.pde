import java.lang.Math; 
int x = 0;
int y = 0;

void setup() {
  size(400 ,640); 
  noStroke(); 
}

void enemy(int xcor, int ycor)
{
  rect(xcor, ycor, 66, 66);
}

void draw() { 
  background(51);
  y += 1;
  
  for (int i = 10; i < 350; i += 60)
  {
    enemy(i, y);
  }
  
}