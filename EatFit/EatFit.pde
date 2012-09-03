PImage man;
PImage mouth;
PImage wheel;
PImage chicken;
PImage burger;
int wide=1;
int counter=0;
int d = 300;
float beltSpeed = .04;
int Fspeed = 3;
int score = 0;

Belt[]wheelArray = new Belt[10];
Eater eater = new Eater(50,150);
Mouth chomp = new Mouth(30,110);
Bad[] junkArray = new Bad[5];
Good[] goodArray = new Good[9];


void setup(){
  
  size(1000,500);
  background(255);
  
  
  wheel = loadImage("wheel.png");
  man = loadImage("man.png");
  burger = loadImage("burger.png");
  chicken = loadImage("chicken.png");
  mouth = loadImage("mouth.png");
  
    for(int i = 0; i<wheelArray.length;i++){
   wheelArray[i] = new Belt(i*70 +250,210, beltSpeed);
  }
  
  for(int g = 0; g<goodArray.length;g++){
   goodArray[g] = new Good(int(random(1100,2200)),120,Fspeed);
  }
  
  for(int e = 0; e<junkArray.length; e++){
   junkArray[e] = new Bad(int(random(1100,2200)),120,Fspeed);
  }
 
  
}

void draw(){
  smooth();
  background(255);
  eater.eat();
  image(wheel,50,110); //change to mouth structure
  
  pushMatrix();
  chomp.chew();
  popMatrix();
 
 for(int i = 0; i<wheelArray.length;i++){
   wheelArray[i].spin();
 }
 
 for(int a = 0; a<goodArray.length; a++)
 {
   goodArray[a].spawn();
 }
 for(int d = 0; d<junkArray.length; d++)
 {
   junkArray[d].spawn(); 
 }

//                                  HITESTEST  
  //fat test
  for(int n = 0; n<junkArray.length; n++){
  if(hitTest(eater,junkArray[n]))
  {
    junkArray[n].reset();
    
    if(wide<=200){
    wide+=10;
    
  }
  }
  
  }// hittest nobueno

for(int n = 0; n<goodArray.length; n++){
 if(hitTest(eater, goodArray[n]))
 {
   score++;
   if(score>10){
    Fspeed+=4; 
    beltSpeed+=.02;
   }
   if(score>20){
    Fspeed+=4; 
    beltSpeed+=.02;
   }
   
   goodArray[n].reset(); 
 }
}    //    good hitTest 
  
   
   for(int n = 0; n<goodArray.length; n++){
    
     if(mousePressed && mouseX<goodArray[n].xpos+goodArray[n].width && mouseX>goodArray[n].xpos && mouseY<goodArray[n].ypos+goodArray[n].height && mouseY>goodArray[n].ypos)
     {
       goodArray[n].reset();
     }
   }
   
   
   for(int n = 0; n<junkArray.length; n++){
     if(mousePressed && mouseX<junkArray[n].xpos+junkArray[n].width && mouseX>junkArray[n].xpos && mouseY<junkArray[n].ypos+junkArray[n].height && mouseY>junkArray[n].ypos)
     {
       junkArray[n].reset();
     }
   }
   
  ///killfunction
  
  if(wide==200)
  {
   fill(int(random(0,255))); 
   noStroke();
   rotate(radians(5));
   translate(155,330);
   rect(0,0,20,20);
   
    
  }
  
  
  
  
  
  
}//draw end

 


   boolean hitTest(Eater p1, Good e1) {
  return(p1.xpos<e1.xpos+e1.width && p1.xpos+p1.width>e1.xpos && p1.ypos<e1.ypos+e1.height && p1.ypos+p1.height>e1.ypos);
} 

 boolean hitTest(Eater p1,Bad b1) {
  return(p1.xpos<b1.xpos+b1.width && p1.xpos+p1.width>b1.xpos && p1.ypos<b1.ypos+b1.height && p1.ypos+p1.height>b1.ypos);
}


