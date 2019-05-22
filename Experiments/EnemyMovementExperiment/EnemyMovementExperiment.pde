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
  y += random(1,5);
  
  for (int i = 2; i < 350; i += 100)
  {
    enemy(i, y);
    if(i == 302){ i = 2; }
  }
  
}