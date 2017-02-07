class Enemy
{
  
  void enemy()
  {
    mission(gameX);
  }
  void mission(float x)
  {
    
   
    y=y+20;
    image(missile,r,y,enemyS,enemyS);
 //   strokeWeight(3);
 //  stroke(random(255),random(255),random(255));
   //line(r+40,y+90,r+40,y+800);
    
    
    
       if ( gameY <= y+enemyS/2 && x >= r-enemyS/2 && x<=r+enemyS/2)

      {
        boom.play();
        finish.finish();

      }
      
    if(y>height)
    {
      
      r=random(340);
      y= random(20);
      
      
    }
    
            if(score >= 20)
    {
      r = -80;
      y = -80;
    }

  }
  
  
}