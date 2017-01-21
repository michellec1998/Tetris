//green
class T_block extends Blocks implements Blocks_int
{
 public T_block()
  {
    myCenterX = 300;
    myCenterY = 200;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    
    corners = 8;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -20;
    yCorners[0] = 40;
    
    xCorners[1] = -20;
    yCorners[1] = 0;
    
    xCorners[2] = -60;
    yCorners[2] = 0;
    
    xCorners[3] = -60;
    yCorners[3] = -40;
    
    xCorners[4] = 60;
    yCorners[4] = -40;
    
    xCorners[5] = 60;
    yCorners[5] = 0;
    
    xCorners[6] = 20;
    yCorners[6] = 0;
    
    xCorners[7] = 20;
    yCorners[7] = 40;
  }
  
  public void show()
  {
   fill(192, 249, 187);
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