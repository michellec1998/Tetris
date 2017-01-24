Blocks_int[] blocks;
int block_num = (int)(Math.random()*5) -1;

I_block[] eyes = new I_block[5];
L_block[] ells = new L_block[5];
Square_block[] squares = new Square_block[5];
T_block[] tees = new T_block[5];


public void settings()
{
  size(450,700);
  
  blocks = new Blocks_int[4];

  //this could be the problem
 
  blocks[0] = new I_block();
  blocks[1] = new L_block();
  blocks[2] = new Square_block();
  blocks[3] = new T_block();
  
  eyes[0] = new I_block();
  ells[0] = new L_block();
  squares[0] = new Square_block();
  tees[0] = new T_block();
    
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
  
  //the I block
  for (int e = 0; e < eyes.length; e++)
  {
    eyes[e].move();
    eyes[e].show();
    eyes[e].keyPressed();
  }
  
  //the L block
  for (int l = 0; l < ells.length; l++)
  {
    ells[l].move();
    ells[l].show();
    ells[l].keyPressed();
  }
  
  //the square block
  for (int s = 0; s < squares.length; s++)
  {
    squares[s].move();
    squares[s].show();
    squares[s].keyPressed(); 
  }
  
  //the T block
  for (int t = 0; t < tees.length; t++)
  {
    tees[t].move();
    tees[t].show();
    tees[t].keyPressed();
  }

  
  blocks[0] = new I_block();
  blocks[1] = new L_block();
  blocks[2] = new Square_block();
  blocks[3] = new T_block();
  
  eyes[0] = new I_block();
  ells[0] = new L_block();
  squares[0] = new Square_block();
  tees[0] = new T_block();
  
  if (mousePressed)
  {
    if (block_num == 0)
    {
      eyes[0].move();
      eyes[0].show();
    }
    if (block_num == 1)
    {
      ells[0].move();
      ells[0].show();
    }
    if (block_num == 2)
    {
      tees[0].show();
      tees[0].move();
    }
    if (block_num == 3)
    {
      squares[0].show();
      squares[0].move();
    } 
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