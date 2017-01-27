//first 
I_block[] eyes = new I_block[5];
L_block[] ells = new L_block[5];
Square_block[] squares = new Square_block[5];
T_block[] tees = new T_block[5];

//board
Board ugly = new Board();

int block_num = (int)(Math.random()*5) -1;

public void settings()
{
  size(500,700);
  
  for (int i = 0; i < eyes.length; i ++)
  {
    eyes[i] = new I_block();
  }
  for (int l = 0; l < ells.length; l ++)
  {
    ells[l] = new L_block();
  }
  for (int s = 0; s < squares.length; s++)
  {
    squares[s] = new Square_block();
  }
  for (int t = 0; t < tees.length; t++)
  {
    tees[t] = new T_block();
  }
  
  
}
public void draw()
{
  background(0);
  ugly.show();
  
  for (int i = 0; i < eyes.length; i ++)
  {
    eyes[i].show();
    eyes[i].move();
    eyes[i].keyPressed();
  }
  for (int l = 0; l < ells.length; l ++)
  {
    ells[l].show();
    ells[l].move();
    ells[l].keyPressed();
  }
  for (int s = 0; s < squares.length; s++)
  {
    squares[s].show();
    squares[s].move();
    squares[s].keyPressed();
  }
  for (int t = 0; t < tees.length; t++)
  {
    tees[t].show();
    tees[t].move();
    tees[t].keyPressed();
  }

}



//when mousePressed, random shape comes out
//mouse pressed is redraw them at the top