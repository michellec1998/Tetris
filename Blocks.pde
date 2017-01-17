//Block superclass
//each block has 4 tiles and 40x40 pix/ sqr
//each block class will have it's own show function
//acceleration will happen on its own with keypressed function b/c only the y is going into negative
//the myCenterY is always decreasing
//when moving side to side, x increases or decrease, left - decrease, right - increase

abstract class Blocks
{
  protected int corners;
  protected int[] xCorners;
  protected int[] yCorners;
  //THE CENTER OF A RECT IS AT THE TOP LEFT CORNER
  protected double myCenterX, myCenterY;
  protected double myDirectionX, myDirectionY;
  protected double myPointDirection;
  
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  

//when you press the down arrow, the blocks will fall faster
//when you press down, y decreases
public void accelerate()
{
}

//when you press right arrow, rotates clockwise 180, when left, rotates counterclockwise 180
public void rotate(int nDegreesOfRotation)
{
  myPointDirection += nDegreesOfRotation;
}

//move when it comes onto the screen
public void move()
{
  myCenterY ++;
  
  myCenterX += myDirectionX;    
  myCenterY += myDirectionY;   
  
  if(myCenterY > height)
  {
    myCenterY = -50;
  }
}

public void show()
{
  double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);
}

//the end of the abstract class
}