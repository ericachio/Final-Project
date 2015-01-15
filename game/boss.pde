class boss extends monsters {

  PImage dragon; //for the different monsters
  PImage d;

  void start() {   
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
    //other bosses?
  }
  
}

