PImage man;
PImage mouth;
PImage wheel;
PImage chicken;
PImage burger;
int wide=1;
int counter=0;
int d = 300;
int FatCount=0;
int beltSpeed = .04;
int Fspeed = 3;

Belt[]wheelArray = new Belt[12];
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
   wheelArray[i] = new Belt(i*50 +250,200, beltSpeed)
  }
  
  for(int g = 0; g<goodArray.length;g++){
   goodArray[g] = new Good(random(1100,1500),130,Fspeed);
  }
  
  for(int e = 0; e<goodArray.length; e++){
   goodArray[e] = new Good(random(1100,1500),130,Fspeed);
  }
 
  
}

void draw(){
  background(255);
  eater.eat();
  image(wheel,50,110); //change to mouth structure
  
  pushMatrix();
  chomp.chew();
  popMatrix();
 
 for(int i = 0; i<wheelArray.length;i++){
   wheelArray[i].spin();
 }

//                                  HITESTEST  
  //fat test
  for(int n = 0; n<junkArray.length; n++){
  if(hitTest(eater,junkArray[n]))
  {
    junkArray[n].reset();
    if(wide<200){
    wide = FatCount*10;
    
  }
  }
  
  }// hittest nobueno

for(int n = 0; n<goodArray.length; n++){
 if(hitTest(eater, goodArray[n]))
 {
   goodArray[n].reset(); 
 }
}
  
  
  
}//draw end



   boolean hitTest(Eater p1, Good e1) {
  return(p1.xpos<e1.xpos+e1.width && p1.xpos+p1.width>e1.xpos && p1.ypos<e1.ypos+e1.height && p1.ypos+p1.height>e1.ypos);
} 

 boolean hitTest(Eater p1,Bad b1) {
  return(p1.xpos<b1.xpos+b1.width && p1.xpos+p1.width>b1.xpos && p1.ypos<b1.ypos+b1.height && p1.ypos+p1.height>b1.ypos);
}

