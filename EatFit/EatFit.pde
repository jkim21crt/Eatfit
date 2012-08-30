PImage man;
PImage burger;
PImage carrots;
PImage greens;
int counter;
Belt = new Belt(100,100);
Eater = new Eater(50,100);

void setup(){
  
  size(400,800);
  background(0);
  
  
}

void draw(){
  Eater.draw();
  Belt.draw();
  
  
}
