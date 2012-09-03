class Bad{
 int xpos;
 int ypos;
 int speed;
 int width = 100;
 int height = 80;
 
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
   xpos = int(random(1050,2200));
 }
  
}
