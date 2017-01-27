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

//when you press right arrow, rotates clockwise 180, when left, rotates counterclockwise 180
public void rotate(int nDegreesOfRotation)
{
  myPointDirection += nDegreesOfRotation;
}

//move when it comes onto the screen it automatically falls down
public void move()
{
  myCenterY ++;
  
  myCenterX += myDirectionX;    
  myCenterY += myDirectionY;   
  
  if(myCenterY - 100 > height - 280)
  {
    noLoop();
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

//when you press down, they fall faster
//when you press up, they go back to orig speed
public void keyPressed()
{
  //left to go left
  if (keyCode == 37)
  {
    myCenterX = myCenterX -1;
  }
  //right to go right
  if (keyCode == 39)
  {
    myCenterX = myCenterX +1;
  }
  //up to rotateclockwise
  if (keyCode == 38)
  { 
   // myDirectionX = myDirectionX + 90;
  }
  
  //down to rotate counter clockwise
    if (keyCode == 40) 
  {
    myPointDirection = myPointDirection - 1;
  } 
  
}

//the end of the abstract class
}