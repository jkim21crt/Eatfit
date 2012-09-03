class Belt{
 int xpos;
 int ypos;
 float rot=0.0;
 float speed;
 Belt(int x, int y, float z)
 {
   xpos = x;
   ypos = y;
   speed = z;
 }
  
void spin(){
  noFill();
  stroke(0);
  strokeWeight(10);
  line(250,180,1000,180);
  line(250,240,1000,240);
  ellipse(xpos,ypos, 60,60);
  
  rot-= speed;
  pushMatrix();
  translate(xpos,ypos);
  rotate(rot);
  image(wheel,0,0);
  popMatrix();
}
  
   
}
