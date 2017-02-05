class Enemy
{
  
  void enemy()
  {
    mission(gameX);
  }
  void mission(float x)
  {
    
    y=y+10;
    image(missile,r,y,enemyS,enemyS);
    
    first.control();
       
       if ( x >= r-enemyS/2 && x<= r+enemyS/2)
       
       

      {
        finish.finish();
      }
      
    if(y>height)
    {
      r=random(340);
      y= random(20);
      
      
    }
    

  }
  
  
}