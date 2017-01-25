class First
{
  void first()
  {
    background(gradient);
    control();
    asteroid();
  }
  
  void control()
  {
    image(spaceship,gameX,gameY, 100, 100);
    
    if(gameX < 0)
    { 
      gameX = 0+5;
    }
    else if(gameX > 240)
    {
      gameX = 235;
    }
    
    
    if(keyPressed)
    {
      if(keyCode == LEFT)
      {
        gameX -= 5;
      }
      else if(keyCode == RIGHT)
      {
        gameX += 5;
      }
      else if(keyCode == UP)
      {
        laser();
      }
    }
  }
  
  void laser()
  {
    stroke(random(255),random(255),random(255));
    line(gameX+48,gameY+5,gameX,gameY*-200);
  }
  
  void asteroid()
  {
    image(asteroid,astX,astY, 70,70);
    if(frameCount%speed == 0)
    {
      astY += 20;
      astX = astX + random(-60,60);
      
      if(astX<0)
      {
        astX = 0;
        astX += 10;
      }
      

    }
      
  }
}