class monster{
  
  PImage[] alive, dead; //2 arrays for dead or alive?
  PImage ghost, octopus, watermelon; //for the different mmonsters
  int size; //set to load character into arrays?
  float typeM;
  void start(){
if(typeM==0){
  ghost=loadImage("ghost.png");
  alive = new PImage[2];
  //50 pixels each. 60 high
 
  for(int n=0; n<3;n++){
    alive[n]=get(size, 0, 50, 60);
    size+=50;
  }
  dead= new PImage[2];
  for(int n=0; n<3;n++){
    dead[n]=get(size,0, 50,60);
    size+=50;}}
if(typeM==1){
  octopus=loadImage("octopus.png");
  
    
  
  
  
  
  
  
