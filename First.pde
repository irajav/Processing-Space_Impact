class First
{
  float x = 40;
  void first()
  {
    
    noCursor();
    background(gradient);
    control();
    
    scoring();
    asteroids.asteroids();
    cannon(gameX);
   // asteroids();
   next();
   over();
   
    
  }
  
  void scoring()
  {
      text(one[one_index], x,30);
      text(score, width-40, 40);
      
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
    if(score >= 20)
    {
      
      
      enemy.enemy();
      
      
      
    }
  }

  
  void over()
  {
    for(int i = 0; i<5; i++)
    {
      if(astY[i]==height-30)
      {
        //finish.finish();
        text("GAME OVER!!" , width/2,height/2);
        noLoop();
      }
      

    }
  }
}
    
  


      
  