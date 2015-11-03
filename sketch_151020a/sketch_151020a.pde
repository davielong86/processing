void setup()
{
  size(600, 600, P3D);  

  int minMonth = minIndex(rainFall);
  println(months[minMonth] + " had the minimum rainfall of: " + rainFall[minMonth]);

  int maxMonth = maxIndex(rainFall);
  println(months[maxMonth] + " had the maximum rainfall of: " + rainFall[maxMonth]);

  centX = width * 0.5f;
  centY = height * 0.5f;

  textMode(SHAPE);

  for (int i = 0; i < rainFall.length; i ++)
  {
    colors[i] = color(random(100, 255), random(100, 255), 0);
  }
}

float[] rainFall = {45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58}; 
String[] months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
color[] colors = new color[rainFall.length];

float centX, centY;

float sum(float[] array)
{
  float sum = 0;
  for (float r : array)
  {
    sum += r;
  }
  return sum;
}


int minIndex(float[] r)
{
  float min = r[0];
  int minIndex = 0;
  for (int i = 1; i < r.length; i ++)
  {
    if (r[i] < min)
    {
      min = r[i];
      minIndex = i;
    }
  }
  return minIndex;
}

int maxIndex(float[] r)
{
  float max = r[0];
  int maxIndex = 0;
  for (int i = 1; i < r.length; i ++)
  {
    if (r[i] > max)
    {
      max = r[i];
      maxIndex = i;
    }
  }
  return maxIndex;
}

int mode = 0;

color randomColor()
{
  return color(random(0, 255), random(0, 255), random(0, 255));
}

void draw()
{    
  background(0);
  
  float barWidth = width / (float) months.length;
  float border = width * 0.1f;
  
  drawAxis(rainFall, months, 15, 150, border);
  stroke(0, 255, 255);

  for (int i = 1; i < rainFall.length; i ++)
  {
    float x1 = map(i -1, 0, rainFall.length - 1, border, width - border);
    float x2 = map(i,0, rainFall.length -1 ,border, width - border );
    float y1 = map(rainFall[i - 1], 0, 150,  height - border, border );
    float y2 = map(rainFall[i], 0, 150, height - border, border);
    line(x1, y1, x2, y2);
  }
} 

void drawAxis(float[] data, String[] horizLabels, int verticalIntervals, float vertDataRange, float border)
{
  stroke(200, 200, 200);
  fill(200, 200, 200);  

  // Draw the horizontal azis  
  line(border, height - border, width - border, height - border);

  float windowRange = (width - (border * 2.0f));  
  float horizInterval =  windowRange / (data.length - 1);
  float tickSize = border * 0.1f;


  for (int i = 0; i < data.length; i ++)
  {   
    // Draw the ticks
    float x = border + (i * horizInterval);
    line(x, height - (border - tickSize)
      , x, (height - border));
    float textY = height - (border * 0.5f);

    // Print the text 
    textAlign(CENTER, CENTER);
    text(horizLabels[i].substring(0, 3), x, textY);
  }

  // Draw the vertical axis
  line(border, border, border, height - border);

  float verticalDataGap = vertDataRange / verticalIntervals;
  float verticalWindowRange = height - (border * 2.0f);
  float verticalWindowGap = verticalWindowRange / verticalIntervals; 
  for (int i = 0; i <= verticalIntervals; i ++)
  {
    float y = (height - border) - (i * verticalWindowGap);
    line(border - tickSize, y, border, y);
    float hAxisLabel = verticalDataGap * i;

    textAlign(RIGHT, CENTER);  
    text((int)hAxisLabel, border - (tickSize * 2.0f), y);
  }
}//end of draw axis
