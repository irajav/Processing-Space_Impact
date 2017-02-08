class First
{
  float x = 40;
  PFont font3;
    
  void first()
  {
    background(galaxy);
    cannon(gameX);
    control();
    enemy.enemy();
    font();
    asteroids();
    next();
    over(); 
    
    //this will list the score at the top right of the screen
    text(score, width-40, 100);
  }
  
  void font()
  {
    font3 = loadFont("SourceCodePro-Bold-20.vlw");
    textFont(font3,20);
  }
  
  //This is the level one of the game
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
  
  //this is the level two of the game - enemy2[bombs] will show up
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
  
  
  //this is the level 3 of the game or the master level - bombs and missiles will disappear
  //and will be replaced with three monsters
  void header()
  {
    text(three[three_index], x,30); 
    x = x-5;
   
    float w = textWidth(three[three_index]);
    {
       if (x < -w+40)
       {
          x = w+40;
          three_index = (three_index+1)%three.length;
        }
     }
  }
  
  //this allows the user to control the spaceship either left or right. 
  //up key will allow the user to shoot laser
  void control()
  {
    image(spaceship,gameX,gameY, spaceSize,spaceSize);
   
    //allows spaceship to stay within the screen
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
        pew.play();
      }
    }
  }
  
  void laser()
  {
    
    if(keyPressed)
    {
      if(keyCode == UP)
      {
            strokeWeight(4);
            stroke(random(255),random(255),random(255));
            line(gameX+48,gameY+5,gameX,gameY*-200);
      }
    }

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
    if(keyCode == UP)
      {
        for(int i = 0; i < 5; i++)
        {
           if((shotX >= (astX[i]-size/2))&&(shotX <= (astX[i]+size/2)))
           {
              image(asteroid,astX[i],astY[i],size,size);
              bang.play();
              pew.stop();
              astX[i]=getRandomX();
              astY[i] = 60;
              
              //if laser hits asteroid, score is incremented by one
              score++;
           }
        }
      }
      
    //asteroids will disappear from the screen  
    if(score >= 30)
    {
       for(int i = 0; i < 5; i++)
       {
          image(asteroid,astX[i],astY[i],size,size);
          astX[i] = -50;
          astY[i] = -50;
       }
    }
  }
  
  
  //control for master level
  //up key will allow spaceship to move up
  //down key will allow spaceship to move down
  void control2()
  {
    if(keyPressed)
    {
      if(keyCode == UP)
      {
        gameY -= 5;
        noStroke();
        pew.stop();
      }
      else if(keyCode == DOWN)
      {
        gameY += 5;
      }
    }
  }
  
  
  void next()
  {
    if(score >= 30)
    {
      header();
      monster();
      control2();
    }
    else if (score >= 15)
    {
      scoring2();
      enemy2.enemy2();
      laser();
    }
    else
    {
      scoring();
      laser();
    }
  }
  
    void monster()
  {
    
    //allows the monsters to stay within the screen
    image(monster, monsterX, monsterY, monstSize,monstSize);
    monsterX += monsterSpeed;
    
    if (monsterX + monstSize > width || monsterX < 0)
    {
      monsterSpeed = -monsterSpeed;
    }
    
    image(monster2, monster2X, monster2Y, monstSize2,monstSize2);
    monster2X += monsterSpeed2;
    
    if(monster2X + monstSize2 > width || monster2X <0 )
    {
      monsterSpeed2 = -monsterSpeed2;
    }
    
    image(monster3, monster3X, monster3Y, monstSize3,monstSize3);
    monster3X += monsterSpeed3;
    
    if(monster3X + monstSize3 > width || monster3X <0 )
    {
      monsterSpeed3 = -monsterSpeed3;
    }

    
    //if spaceship hits any of the monsters, game will be over
    if (gameY <= monsterY+monstSize/2 && gameX >= monsterX-monstSize/2 && gameX <= monsterX+monstSize/2 )
    {
      finish.finish();
    }
        
    if (gameY <= monster2Y+monstSize2/2 && gameX >= monster2X-monstSize2/2 && gameX <= monster2X+monstSize2/2 )
    {
      finish.finish();
    }
    
    if (gameY <= monster3Y+monstSize3/2 && gameX >= monster3X-monstSize3/2 && gameX <= monster3X+monstSize3/2 )
    {
      finish.finish();
    }
    
    //if spaceship surpasses the monsters, you win
    if(gameY <= 140)
    {
      winner.winner();
    }
    
  }
  
  
  // if asteroid touches the bottom of the screen, game will be over
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
    
  


      
  