void drawStar(float centerx, float centery, float rad, int points)
{
    float thetaInc = TWO_PI / (points * 2);
    float lastX;
    float lastY;
    lastX = centerx;
    lastY = centery -rad; 
    
    for (int i = 1 ; i <= (points * 2) ; i ++)
    {
      float theta = i * thetaInc;
      float x, y;
      float r;
      if (i % 2 == 1)
      {
        r = rad * 0.5f;
      }
      else
      {
        r = rad;        
      }

      x = centerx + sin(theta) * r;
      y = centery -cos(theta) * r;
      line(lastX, lastY, x, y);
      lastX = x;
      lastY = y;      
    }
}

void setup () 
{
  size(800, 800);
  cx=width/2.0f;
  cy=height/2.0f;
  r=10;
  //theta =0.0f;
  smallR =5;
  arms= 10;
  stroke(random(0, 255),random(0, 255),random(0, 255));
}

float cx, cy;
float r;
float smallR;
int arms;
float theta;
float thetaInc;
float frameOffset;


void draw() 
{
  //background(random(0, 255),random(0, 255),random(0, 255));
  background(0);
  float thetaInc =TWO_PI /arms;
  r=10;
  float offset = 0.0f;
  smallR = 5;
  for (int cCount = 0; cCount <10; cCount++ )
  {
    for (float theta = 0; theta < TWO_PI; theta += thetaInc) 
    {
      float x, y;
      x=cx+sin(theta + offset + frameOffset) * r;
      y=cy-cos(theta + offset + frameOffset) * r;
      drawStar(random(0, width), random(0, height), random(5, 10), (int)random(5, 10));
      stroke(random(0, 255),random(0, 255),random(0, 255));
      fill(random(0, 255),random(0, 255),random(0, 255));
    }
    r+=8;
    smallR+=0.9;
    offset+=0.25f;
  }
  frameOffset+=0.0009f;
}


