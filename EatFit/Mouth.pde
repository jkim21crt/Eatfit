class Mouth{
 int xpos;
 int ypos;
 int width = 150;
 int height= 100;
 
 Mouth(int x, int y){
   xpos =x;
   ypos =y;
   
 }
  
  void chew(){
   
    image(mouth, xpos, ypos);
    
  }
  
  
}
