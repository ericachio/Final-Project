class monsters {

  PImage[] walk; //2 arrays for dead or alive?
  PImage dragon; //for the different monsters
  PImage d;
  int size1, size2; //set to load character into arrays
  float typeM;


  void start() {   
    if (typeM == 0) {
      dragon = loadImage("dragon.png");
      walk = new PImage[6];
      //80 pixels each. 51 high
      for (int n = 0; n < 6; n++) {
        walk[n] = dragon.get(size1, 0, 80, 51);
        size1 += 80;
        if (n > 2) {
          walk[n] = dragon.get(size2, 51, 80, 51);
          size2 += 80;
        }
      }
    }
    //other monsters
  }

  void action() {
    image(mon.walk[steps], position, 300, 200, 200); 
    steps ++;
    if (steps > walk.length - 1) {
      steps = 0;
    }
  }
}

