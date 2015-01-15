class monsters {

  PImage[] walk; 
  PImage scake, ccake; //for the different monsters
  PImage d;
  int size1, size2; //set to load character into arrays
  float typeM;

  


  void start() {   
    if (typeM == 0) {
      scake = loadImage("strawberrycake.png");
      walk = new PImage[13];
      //87 pixels each. 90 high
      for (int n = 0; n < 13; n++) {
        walk[n] = scake.get(size1, 0, 87, 90);
        size1 += 87;
        if (n > 8) {
          walk[n] = scake.get(size2, 90, 87, 90);
          size2 += 87;
        }
      }
    }
    if (typeM == 1) {
      ccake = loadImage("chocolatecake.png");
      walk = new PImage[10];
      //96 pixels each. 114 high
      for (int n = 0; n < 10; n++) {
        walk[n] = ccake.get(size1, 0, 96, 114);
        size1 += 96;
        if (n > 3) {
          walk[n] = ccake.get(size2, 114, 96, 114);
          size2 += 96;
        }
      }
    }
    //other monsters
  }

  void action() {
    image(mon.walk[steps], position, 350, 200, 200); 
    steps ++;
    if (steps > walk.length - 1) {
      steps = 0;
    }
  }
}


