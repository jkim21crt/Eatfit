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
   
   if(score<10)
    speed = Fspeed;
   
   if(score>10&&score<20){
    speed=7; 
    beltSpeed+=.08;
   }
   if(score>20){
    speed=12; 
    beltSpeed+=.1;
   }
   
 }
 
 void reset(){
   xpos = int(random(1050,2200));
 }
  
}
