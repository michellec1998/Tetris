//yellow
//backwards -- will fix
class L_block extends Blocks
{
 public L_block()
  {
    myCenterX = 200;
    myCenterY = 70;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    
    corners = 6;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -40;
    yCorners[0] = 80;
    xCorners[1] = 40;
    yCorners[1] = 80;
    xCorners[2] = 40;
    yCorners[2] = 40;
    xCorners[3] = 0;
    yCorners[3] = 40;
    xCorners[4] = 0;
    yCorners[4] = -40;
    xCorners[5] = -40;
    yCorners[5] = -40; 
    
  }
  
  public void show()
  {
   fill(252, 255, 181);
   //stroke(236, 239, 155);
   //strokeWeight(3);
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