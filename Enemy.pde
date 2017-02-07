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
    
    // if missiles touch the spaceship, game will be over
    if ( gameY <= y+enemyS/2 && x >= r-enemyS/2 && x<=r+enemyS/2)
    {
        boom.play();
        finish.finish();
    }//end if
      
    if(y>height)
    {
      
      r=random(340);
      y= random(20);      
    }//end if
    
    
    //if score reaches 20 or more, missiles will disappear from the screen
    if(score >= 30)
    {
      r = -80;
      y = -80;
    }//end if
  }
  
  
}