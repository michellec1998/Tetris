Blocks_int[] blocks;
int block_num = (int)(Math.random()*5) -1;

I_block[] eyes = new I_block[40];
L_block[] ells = new L_block[40];
Square_block[] squares = new Square_block[40];
T_block[] tees = new T_block[40];


public void settings()
{
  size(450,700);
  
  blocks = new Blocks_int[4];
  //this could be the problem, cause making new blocks, with the specific location
 
    blocks[0] = new I_block();
    blocks[1] = new L_block();
    blocks[2] = new Square_block();
    blocks[3] = new T_block();
  
    
}
public void draw()
{
  background(0);
  
  for (int b = 0; b < blocks.length; b++)
  {
    blocks[b].move();
    blocks[b].show();
    blocks[b].keyPressed();
  }
  
}

interface Blocks_int
{
  public void move();
  public void show();
  public void keyPressed();
}

//when mousePressed, random shape comes out
//mouse pressed is redraw them at the top
public void mousePressed()
{   
  blocks[0] = new I_block();
  blocks[1] = new L_block();
  blocks[2] = new Square_block();
  blocks[3] = new T_block();

  if (block_num == 0)
 {
    I_block eye = new I_block;
 }
 else if (block_num == 1)
 {
    L_block ell = new L_block();
 }
 else if (block_num == 2)
 {
    Square_block squee = new Square_block();
 }
  else  if (block_num == 3)
 {
    T_block tee = new T_block();
 }
   
}