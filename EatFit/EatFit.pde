PImage man;
PImage mouth;
PImage wheel;
PImage chicken;
PImage burger;
PImage malfunction;
int wide=1;
int counter=0;
int d = 300;
float beltSpeed = .06;
int Fspeed = 4;
int score = 0;
int t= 0;
int Fat = 0;
int y = 0;
int blow = 30;
Belt[]wheelArray = new Belt[10];
Eater eater = new Eater(50,150);
Mouth chomp = new Mouth(30,110,blow);
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
  malfunction = loadImage("malfunction.png");
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
    if(wide<210){
      wide+=20;  
   }
  }
  
  
  }// hittest nobueno

for(int n = 0; n<goodArray.length; n++){
 if(hitTest(eater, goodArray[n]))
 {
   score++;
   if(score>10){
    Fspeed+=4; 
    beltSpeed+=.04;
   }
   if(score>20){
    Fspeed+=4; 
    beltSpeed+=.04;
   }
   
   goodArray[n].reset(); 
 }
}    //    good hitTest 
  
  
  if(wide>200){
    
   ellipse(155,330,int(random(0,100)), int(random(0,100)));
   chomp.f= -45;
   if(chomp.deg==-80){
    image(malfunction,0,0);
    noLoop(); 
    
   }
    
  }
  
  
  
  
 
   for(int q = 0; q<goodArray.length; q++){
    
     if(mousePressed && mouseX<goodArray[q].xpos+goodArray[q].width && mouseX>goodArray[q].xpos && mouseY<goodArray[q].ypos+goodArray[q].height && mouseY>goodArray[q].ypos)
     {
       goodArray[q].reset();
     }
   }
   
   
   for(int n = 0; n<junkArray.length; n++){
     if(mousePressed && mouseX<junkArray[n].xpos+junkArray[n].width && mouseX>junkArray[n].xpos && mouseY<junkArray[n].ypos+junkArray[n].height && mouseY>junkArray[n].ypos)
     {
       junkArray[n].reset();
     }
   }
   
 
   

  
  
  
  
  
  
}//draw end

 


   boolean hitTest(Eater p1, Good e1) {
  return(p1.xpos<e1.xpos+e1.width && p1.xpos+p1.width>e1.xpos && p1.ypos<e1.ypos+e1.height && p1.ypos+p1.height>e1.ypos);
} 

 boolean hitTest(Eater p1,Bad b1) {
  return(p1.xpos<b1.xpos+b1.width && p1.xpos+p1.width>b1.xpos && p1.ypos<b1.ypos+b1.height && p1.ypos+p1.height>b1.ypos);
}


