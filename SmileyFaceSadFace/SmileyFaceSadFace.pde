void setup()
{
 size(1000, 1000); 
 
}//end setup() method

void draw()
{
  //Declare/initialise variables
  int faceX;
  int faceY = 50;
  
  int eyeLX;
  int eyeLY = 25;
  
  int eyeRX;
  int eyeRY = 25;
  
  int noseX;
  int noseY = 50;
  
  int mouthX;
  int mouthY = 70;
  
  //Set backgraounfnd/fill/stroke
  background(0); //black
  fill(0);  //black
  stroke(255, 255, 0);  //yellow
  
  //outer loop controls each line of faces
  for(int i = 0; i < 10; i++)
  {
    //at start of each outer loop the x coordinates are reset to the left margin
    faceX = 50;
    eyeLX = 25;
    eyeRX = 75;
    noseX = 50;
    mouthX = 30;
    
    //inner loop controls each row of faces
    for(int j = 0; j < 10; j++)
    {
      //draw the face outline
      ellipse(faceX, faceY, 100, 100);
      
      //draw the left eye
      ellipse(eyeLX, eyeLY, 10, 10);
      
      //draw the right eye
      ellipse(eyeRX, eyeRY, 10, 10);
      
      //draw the node
      ellipse(noseX, noseY, 10, 10);
      
      //draw the mouth
      //if j is even smile
      if(j % 2 == 0)
      {
        //three separate lines
        line(mouthX, mouthY, mouthX + 5, mouthY + 5);
        line(mouthX + 5, mouthY + 5, mouthX + 35, mouthY + 5);
        line(mouthX + 35, mouthY + 5, mouthX + 40, mouthY);
      }
      //else be sad
      else
      {
        line(mouthX, mouthY + 10, mouthX + 5, mouthY + 5);
        line(mouthX + 5, mouthY + 5, mouthX + 35, mouthY + 5);
        line(mouthX + 35, mouthY + 5, mouthX + 40, mouthY + 10);
      }
      
      //move the x coordinates one whole face width (100) to the right
      faceX += 100;
      eyeLX += 100;
      eyeRX += 100;
      noseX += 100;
      mouthX += 100;
    }//end inner for
    
    //move the y coordinates one whole face height (100) below
    faceY += 100;
    eyeLY += 100;
    eyeRY += 100;
    noseY += 100;
    mouthY += 100;
  }//end outer for
  
}//end draw() method
