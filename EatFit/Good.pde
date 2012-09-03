class Good{
 int xpos;
 int ypos;
 int speed;
 int width = 100;
 int height = 80;
 
 Good(int x, int y, int z){
 xpos = x;
 ypos = y;
 speed = z;

 }
 
 void spawn(){
  image(chicken, xpos, ypos);
   xpos-=speed;
 }
 
 void reset(){
   xpos = int(random(1050,2200));
 }
  
}
