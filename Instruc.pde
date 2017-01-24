/*
//press down to speed up
//press up to go back to orig. speed
//connect the pieces

//there needs to be a "floor", when the blocks make it to the bottom, they stop
//or when they touch another block, they stop

//Block superclass
//each block has 4 tiles and 40x40 pix/ sqr
//each block class will have it's own show function
//acceleration will happen on its own with keypressed function b/c only the y is going into negative
//the myCenterY is always decreasing
//when moving side to side, x increases or decrease, left - decrease, right - increase

//once one of the pieces passes the screen, have a random piece fall down


//I_block eye = new I_block();
//L_block ell = new L_block();
//Square_block squee = new Square_block();
//T_block tee = new T_block();

/*Blocks_int eye = new I_block();
Blocks_int ell = new L_block();
Blocks_int squee = new Square_block();
Blocks_int tee = new T_block(); */

  //tee.show();
  //tee.move();
  
  //eye.move();
  //eye.show();
  
  //ell.show();
  //ell.move();
  
  //squee.move();
  //squee.show();
  
  
  //chooses a random shape only everytime you run the program
  //need to choose when during the same game
 
 
 //make an array for each block class 
 //choose one from an array?
 
 /* if (block_num == 0)
 {
    I_block eye = new I_block();
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
 
 //if i used an array with 30 in each array
 //then can choose from each array until there's no more
 
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
 
 
if (block_num == 0)
    {
      return new I_block();
    }
    if (block_num == 1)
    {
    }
    if (block_num == 2)
    {
    }
    if (block_num == 3)
    {
    } 
 
   eyes[0] = new I_block();
  ells[0] = new L_block();
  squares[0] = new Square_block();
  tees[0] = new T_block();
  
  
I_block[] eyes = new I_block[5];
L_block[] ells = new L_block[5];
Square_block[] squares = new Square_block[5];
T_block[] tees = new T_block[5];

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
  
  eyes[0] = new I_block();
  ells[0] = new L_block();
  squares[0] = new Square_block();
  tees[0] = new T_block();
  
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
 
     blocks[0] = new I_block();
  blocks[1] = new L_block();
  blocks[2] = new Square_block();
  blocks[3] = new T_block();
 */