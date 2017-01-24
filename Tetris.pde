Blocks_int[] blocks;
int block_num = (int)(Math.random()*5) -1;


public void settings()
{
  size(450,700);
  
  blocks = new Blocks_int[4];

  //this could be the problem
 
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

  
  blocks[0] = new I_block();
  blocks[1] = new L_block();
  blocks[2] = new Square_block();
  blocks[3] = new T_block();
  
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
    
  }