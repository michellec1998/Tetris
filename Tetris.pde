//there needs to be a "floor", when the blocks make it to the bottom, they stop
//or when they touch another block, they stop
I_block eye = new I_block();
L_block ell = new L_block();
Square_block squee = new Square_block();
T_block tee = new T_block();
Blocks_int[] blocks;

public void settings()
{
  size(450,700);
  
  blocks = new Blocks_int[4];
  
  for (int b = 0; b < blocks.length; b++)
  {
    blocks[0] = new I_block();
    blocks[1] = new L_block();
    blocks[2] = new Square_block();
    blocks[3] = new T_block();
  }
}
interface Blocks_int
{
  public void move();
  public void show();
}

public void draw()
{
  background(0);
  
  for (int b = 0; b < blocks.length; b++)
  {
    blocks[b].move();
    blocks[b].show();
  }
  /*tee.show();
  tee.move();
  
  eye.move();
  eye.show();
  
  ell.show();
  ell.move();
  
  squee.move();
  squee.show(); */

}
//when mousePressed, random shape comes out
public void mousePressed()
{
  //noLoop();
   /* blocks[0] = new I_block();
    blocks[1] = new L_block();
    blocks[2] = new Square_block();
    blocks[3] = new T_block(); */
    
  for (int b = 0; b < blocks.length; b++)
  {
    blocks[0] = new I_block();
    blocks[1] = new L_block();
    blocks[2] = new Square_block();
    blocks[3] = new T_block();
  }
  //redraw();
}


public void keyPressed()
{
  if (keyCode == 40)
  {
    /*tee.myCenterY = tee.myCenterY + 5;
    eye.myCenterY = eye.myCenterY + 5;
    ell.myCenterY = ell.myCenterY + 5;
    squee.myCenterY = squee.myCenterY + 5; */
    for (int b = 0; b < blocks.length; b++)
  {
    blocks[b].getY() = blocks[b].getY() + 5;
  }
    
    //blocks.getY = blocks.getY +5;
  }
} 