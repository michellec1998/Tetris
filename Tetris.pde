//there needs to be a "floor", when the blocks make it to the bottom, they stop
//or when they touch another block, they stop
I_block eye = new I_block();
L_block ell = new L_block();
Square_block squee = new Square_block();
T_block tee = new T_block();

public void settings()
{
  size(450,700);
}

public void draw()
{
  background(0);
  /* eye.show();
  ell.show();
  squee.show();
  tee.show();
  tee.move(); */

  tee.show();
  tee.move();
  
  eye.move();
  eye.show();
  
  ell.show();
  ell.move();
  
  squee.move();
  squee.show();

}
//when mousePressed, random shape comes out
public void mousePressed()
{
  //tee.show();
  tee.move();
  
  eye.move();
  //eye.show();
  
  //ell.show();
  ell.move();
  
  squee.move();
  //squee.show();
  redraw();
  //noLoop();
}


public void keyPressed()
{
  if (keyCode == 40)
  {
    tee.myCenterY--;
  }
} 