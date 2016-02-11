public void setup()
{
  size(500, 500);
  noStroke();
}
public void draw()
{
   background(0);
   if(mouseY < height/2)
   	 sierpinski(0,height, 2*mouseX);
   	else if(mouseY> height/2)
   	 sierpinski(0,height, 2*mouseX);
    else if(mouseX < width/2)
     sierpinski(0, height, 2*mouseX);
    else if(mouseX < width/2)
      sierpinski(mouseX/2, height,2*mouseX);
      
    	
}
public void mouseDragged()//optional
{
   
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20)
   {
 	fill(255,0,0);
  	triangle(x,y,x+len/2,y-len,x+len,y);
   }
   else 
   {
    sierpinski(x,y,len/2);
   	sierpinski(x+len/2,y,len/2);
   	sierpinski(x+len/4,y-len/2,len/2);
   }	
}