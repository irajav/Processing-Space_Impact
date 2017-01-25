class Asteroid
{
  float x; 
  float y;
  float diameter;
  
  Asteroid(float tempX, float tempY, float tempD)
  {
    x = tempX;
    y = tempY;
    diameter = tempD;
  }
  void asteroids()
  {
    display();
    descend();
    
  }
  void display()
  {
    image(asteroid,x,y,diameter,diameter);
  }
  
  void descend()
  {
    y++;
    x = x+random(-3,3);
  }
}