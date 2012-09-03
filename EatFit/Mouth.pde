class Mouth{
 int xpos;
 int ypos;
 int width = 150;
 int height= 100;
 int deg = -45;
 int count =0;
 int f;
 Mouth(int x, int y, int z){
   xpos =x;
   ypos =y;;
   f = z;
   
 }
  
  void chew(){
      count++;
    if(count==61)
    { count = 0;
    }
    if(count<30){      
      deg++; 
      }
      if(count>f){
       deg--; 
      } 
      
    translate(xpos,ypos);  
    rotate(radians(deg));
    image(mouth, 0, 0);
 
  }
  
  
}
