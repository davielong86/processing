void setup () 
{
  size(800, 800);// this is setting the screen size
  cx=width/2.0f;// this is setting the hor x to the center of the screen
  cy=height/2.0f;// this is setting the ver y to the center of the screen
  arms= 7;
}
// declar var
float cx, cy;
float rad;
float smallR;
int arms;
float theta;
float thetaInc;
float frameOffset;


void draw() 
{

  background(0);
  stroke(random(0, 255),random(0, 255),random(0, 255));// sets the stroke to a random colour
  //fill(random(0, 255),random(0, 255),random(0, 255));// stes the fill 
  rad = 5;//sets the radiusat the center of the screen 
  smallR = 3;// sets the start radius of the circle
  float thetaInc = TWO_PI /arms;// this sets the distance between circles
  float offset = 0.0f;
  for (int cCount = 0; cCount <100; cCount++ )
  {
    for (float theta = 0; theta < TWO_PI; theta += thetaInc) 
    {
      float x, y;
      x=cx+sin(theta + offset + frameOffset) * rad;
      y=cy-cos(theta + offset + frameOffset) * rad;
      ellipse(x, y, smallR, smallR);
    }
    rad+=8;
    smallR+=0.9;
    offset+=0.11f;
  }
  frameOffset+= 0.1f;
}
