/*
this is arrays and data sets
 arrays in java are bounds checked and if you search outside of them bounds
 the programme will always crash
 
 */

void setup()
{
  size(500, 500);
  for (int i = 0; i < rainfall.length; i ++)
  {
    println(rainfall[i]);
  }// this is one way of running through an array

  for (float r : rainfall) 
  {
    println(r);
  }// this is the second and in this case r cannot be changed 
  println(sum(rainfall));
  println("the min rainfall of: " + rainfall[m] + " this was recorded in: " + months[m]);
  println("the max rainfall of: " + rainfall[n] + " this happened in: " + months[n]);
  println("the avg rainfall for th year was " + total);
  
  
  for (int i = 0; i < colors.length; i ++)
  {
    colors[i] = color(0, random(100, 255), random(100, 255));
  }
  
  
}

//float[] rainfall = new float[12]; // the new part is the same as malloc in C
float[] rainfall = {
  45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58
};
String[] months = {
  "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
};
float total = 0.0f;
color[] colors = new color[rainfall.length];
int n = maxindex(rainfall);
int m = minindex(rainfall);
float x = 0;
float y = 500;
float ratio = (float)height / rainfall[n];




void lineGraph(float[]array)

{
  float point = (width / (float)array.length) / 2;
  
  for (int i = 0; i < array.length; i++)
  {
    stroke(0);
    fill(colors[i]);
    line(x, y, point, -array[i] * ratio);
    x += point;
  }
}


void draw()
{
  lineGraph(rainfall);
}
float avg(float[] aname)
{
  for (int i=0; i< months.length; i++)
  {
    total += aname[i];
  }
  return total/rainfall.length;
}

int maxindex(float[] aname)
{
  float temp = aname[0];
  int maxindex = 0;
  for (int i=0; i< months.length; i++)
  {
    if (aname[i]>temp)
    {
      temp = aname[i];
      maxindex = i;
    }
  }
  return maxindex;
}


int minindex(float[] aname)
{
  float temp = aname[0];
  int minindex = 0;
  for (int i=0; i< months.length; i++)
  {
    if (aname[i]<temp)
    {
      temp = aname[i];
      minindex = i;
    }
  }
  return minindex;
}
float sum;
float sum(float [] rain)
{
  for (int i = 0; i < rainfall.length; i++)
  {
    sum += rain[i];
  }
  return sum;
}

