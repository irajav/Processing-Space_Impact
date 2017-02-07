class Finish
{
  void finish()
  {
    background(galaxy);
      text("SORRY, GAME OVER!!" , width/2-40,height/2);
      bgsound.stop();
       noLoop();
  }
}