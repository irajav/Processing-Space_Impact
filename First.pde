class First
{
  float x = 40;
  
  void first()
  {
    
    noCursor();
    background(galaxy);
    control();
    
    enemy.enemy();
    
    
  //  asteroids.asteroids();
    cannon(gameX);
   asteroids();
   next();
   over();
 //  target();
       
   text(score, width-40, 40);
    
  }
  
  void scoring()
  {
      text(one[one_index], x,30);
      
      
      x = x-5;
      
      float w = textWidth(one[one_index]);
      {
        if (x < -w+40)
        {
          x = w+40;
          one_index = (one_index+1)%one.length;
        }
      }
    
  }
  
    void scoring2()
  {
      text(two[two_index], x,30);
    
      
      x = x-5;
      
      float w = textWidth(two[two_index]);
      {
        if (x < -w+40)
        {
          x = w+40;
          two_index = (two_index+1)%two.length;
        }
      }
    
  }
  
  void control()
  {
    image(spaceship,gameX,gameY, spaceSize,spaceSize);
    
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
        //gameY -= 0.1;
      }
      else if(keyCode == RIGHT)
      {
        gameX += 5;

      }
      else if(keyCode == UP)
      {
        laser();
        pew.play();
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
    for(int i=0; i<5; i++)
    {
      image(asteroid, astX[i], astY[i]++, size,size);
    }
  }
  
  void cannon(int shotX)
  {
    boolean strike = false;

    
    if(keyCode == UP)
      {
   

          for(int i = 0; i < 5; i++)
          {
            if((shotX >= (astX[i]-size/2))&&(shotX <= (astX[i]+size/2)))
            {
              strike = true;
              laser();
              image(asteroid,astX[i],astY[i],size,size);
              bang.play();
              pew.stop();
              astX[i]=getRandomX();
              astY[i] = 40;
              
              score++;
            }
          }
      }
  }
  
      void next()
  {
    if(score >= 5)
    {
      scoring2();
      enemy2.enemy2();
    }
    else
    {
      scoring();
    }
  }
  


  
  void over()
  {
    for(int i = 0; i<5; i++)
    {
      if(astY[i]==height-30)
      {

        finish.finish();
 
      }
      

    }
  }
}
    
  


      
  