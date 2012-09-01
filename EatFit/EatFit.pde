PImage man;
PImage mouth;
PImage burger;
PImage carrots;
PImage greens;
PImage wheel;

int counter=0;
int d = 300;
int FatCount=0;
Belt[]wheelArray = new Belt[10];
Eater eater = new Eater(50,100);
Mouth chomp = new Mouth(50,10);
//Bad[] junkArray = new Bad[5];
//Good[] goodArray = new Good[5];


void setup(){
  
  size(1000,500);
  background(255);
  
  
  wheel = loadImage("wheel.png");
  man = loadImage("man.png");
  burger = loadImage("burger.png");
  greens = loadImage("greens.png");
  carrots = loadImage("carrots.png");
  mouth = loadImage("mouth.png");
  
   for(int i = 0; i<wheelArray.length;i++){
   wheelArray[i] = new Belt(i*50 +300,125);
   wheelArray[i].spin();
  }
  
}

void draw(){
  
  eater.eat();
  chomp.chew();
  
  image(wheel,100,100);
 
  
  
  
  
}//draw end


