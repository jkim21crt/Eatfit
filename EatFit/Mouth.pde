class Mouth{
 int xpos;
 int ypos;
 int width = 150;
 int height= 100;
 int deg = -45;
 int count =0;
 Mouth(int x, int y){
   xpos =x;
   ypos =y;
   
 }
  
  void chew(){
    
      count++;
    if(count==61)
    { count = 0;
    }
    if(count<30){      
      deg++; 
      }
      if(count>30){
       deg--; 
      } 
      
    translate(xpos,ypos);  
    rotate(radians(deg));
    image(mouth, 0, 0);
 
  }
  
  
}
