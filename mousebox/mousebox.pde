void setup()
{
size (500,500);
background(0);
stroke(255);
fill(125);
}
void draw()
{  
println("X is " + mouseX, "and Y is " + mouseY);
rect(width/3,height/3,width/3,height/3);
if(mouseX > 166 && mouseX < 333 && mouseY > 166 && mouseY < 333)
{
fill(0,0,255);
}
else
{
fill(125);
}
}
