class First
{
  void first()
  {
    
    background(gradient);
    control();
    asteroids();
    cannon(gameX);
   

    
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
  
  void asteroids()
  {
    for(int i=0; i<4; i++)
    {
      image(asteroid, astX[i], astY[i]++, size,size);
    }
  }
  
  void cannon(int shotX)
  {
    boolean strike = false;
    
    for(int i = 0; i < 4; i++)
    {
      if((shotX >= (astX[i]-size/2))&&(shotX <= (astX[i]+size/2)))
      {
        strike = true;
        laser();
        image(asteroid,astX[i],astY[i],size+10,size+10);
        bang.play();
        astX[i]=getRandomX();
        astY[i] = 0;
      }
    }
  }
}
    
  


      
  