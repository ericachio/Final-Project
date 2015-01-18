class boss extends monsters {

  PImage[] dragon; //for the different monsters
  PImage d;
  int monHP, monSkill;

  void start() {   
    monHP = 100;
    monSkill = 50;
    d = loadImage("dragon.png");
    dragon = new PImage[6];
    //80 pixels each. 51 high
    for (int n = 0; n < 6; n++) {
      dragon[n] = d.get(size1, 0, 80, 51);
      size1 += 80;
      if (n > 2) {
        dragon[n] = d.get(size2, 51, 80, 51);
        size2 += 80;
      }
    }
    //other bosses?
  }
  void action() {
    image(dragon[steps], position, 350, 200, 200); 
    steps ++;
    if (steps == dragon.length - 1) {
      steps = 0;
    }
  }
}
