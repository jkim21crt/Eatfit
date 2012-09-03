class Belt{
 int xpos;
 int ypos;
 float rot=0.0;
 int speed;
 Belt(int x, int y, int z)
 {
   xpos = x;
   ypos = y;
   
 }
  
void spin(){
  rot-= speed;
  pushMatrix();
  translate(xpos,ypos);
  rotate(rot);
  image(wheel,0,0);
  popMatrix();
}
  
   
}
