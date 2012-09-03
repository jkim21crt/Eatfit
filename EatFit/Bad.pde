class Bad{
 int xpos;
 int ypos;
 int speed;
 int width = 50;
 int height = 50;
 
 Bad(int x, int y, int z){
 xpos = x;
 ypos = y;
 speed = z;

 }
 
 void spawn(){
  image(burger, xpos, ypos);
   xpos-=speed;
 }
 
 void reset(){
   xpos = random(1050,1800);
 }
  
}
