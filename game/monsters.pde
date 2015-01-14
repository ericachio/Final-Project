class monster {

  PImage[] alive, dead; //2 arrays for dead or alive?
  PImage ghost, octopus, watermelon; //for the different mmonsters
  PImage al, d;
  int size; //set to load character into arrays?
  float typeM;
  void start() {

    //GHOST    
    if (typeM==0) {
      ghost=loadImage("ghost.png");
      alive = new PImage[2];
      //50 pixels each. 60 high

      for (int n=0; n<3; n++) {
        alive[n]=get(size, 0, 50, 60);
        size+=50;
      }
      dead= new PImage[2];
      for (int n=0; n<3; n++) {
        dead[n]=get(size, 0, 50, 60);
        size+=50;
      }
    }

    //OCTOPUS
    if (typeM==1) {
      octopus=loadImage("Octopus.png");
      alive=new PImage[2];
      //46 wide, 55 tall

      for (int n=0; n<3; n++) {
        alive[n]=get(size, 55, 46, 55);
        size+=46;
      }
      dead=new PImage[4];
      for (int n=0; n<5; n++) {
        if (n==4) {
          dead[4]=get(0, 0, 46, 55);
        } else {
          dead[n]=get(size, 55, 46, 55);
          size+=46;
        }
      }
    }



    //WATERMELON
    if (typeM==2) {
      watermelon=loadImage("Watermelon.png");
      alive= new PImage[4];
      //52 wide, 48 tall

      //add for functions
    }
  }
}

