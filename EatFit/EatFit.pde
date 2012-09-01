PImage man;
PImage burger;
PImage carrots;
PImage greens;
int counter=0;
int FatCount=0;
Belt wheel1 = new Belt(100,100);
Belt wheel2 = new Belt(700,100);
Eater man = new Eater(50,100);
//Bad[] junkArray = new Bad[5];
//Good[] goodArray = new Good[5];


void setup(){
  
  size(400,800);
  background(0);
  
  
}

void draw(){
  Eater.draw();
  Belt.draw();
  
  
}


boolean hitTest(Eater p1, Bad e1) {
  return(p1.xpos<e1.expos+e1.width && p1.xpos+p1.width>e1.expos && p1.ypos<e1.eypos+e1.height && 
  p1.ypos+p1.height>e1.eypos);
}


