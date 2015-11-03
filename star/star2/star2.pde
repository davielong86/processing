void setup()
{
  background(0);
  size(800, 800);
 
  for(int stars = 0; stars < 50 ; stars ++)
  {
    drawStar(random(0, width), random(0, height), random(10, 50), (int)random(5, 15)); 
    stroke(random(0, 255),random(0, 255),random(0, 255));
   //fill(random(0, 255),random(0, 255),random(0, 255));
  } 
}

void draw()
{

}

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
