//pink
class I_block extends Blocks implements Blocks_int
{
  public I_block()
  {
    myCenterX = 40;
    myCenterY = -100;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -20;
    yCorners[0] = 80;
    xCorners[1] = 20;
    yCorners[1] = 80;
    xCorners[2] = 20;
    yCorners[2] = -80;
    xCorners[3] = -20;
    yCorners[3] = -80;
  }
  
  public void show()
  {
   fill(255, 183, 203);
   noStroke();
   
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
  
  public void setX(int x)
   {
     myCenterX = x;
   }
   public int getX()
   {
     return (int)myCenterX;
   }
   public void setY(int y)
   {
     myCenterY = y;
   }
   public int getY()
   {
     return (int)myCenterY;
   }
   public void setDirectionX(double x)
   {
     myDirectionX = x;
   }
   public double getDirectionX()  
   {
     return (double)myDirectionX;
   }
   public void setDirectionY(double y)
   {
     myDirectionY = y;
   }
   public double getDirectionY()
   {
    return (double)myDirectionY;
   }
    public void setPointDirection(int degrees)
   {
    myPointDirection = degrees;
   }
    public double getPointDirection()
   {
    return (double)myPointDirection;
   }
}