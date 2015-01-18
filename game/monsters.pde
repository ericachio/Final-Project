class monsters {

  PImage[] walk; 
  PImage[] type1, type2, type3;
  PImage scake, ccake, oox; //for the different monsters
  PImage d;
  int size1, size2, steps; //set to load character into arrays
  float typeM;
  int monHP, monSkill, steps4;

  void action() {
    if (typeM < 1) {
      image(type1[steps], position, 350, 200, 200); 
      steps ++;
      if (steps == type1.length - 1) {
        steps = 0;
      }
    }
    steps = 0;
    if (typeM >= 1 && typeM < 2) {
      image(type2[steps], position, 350, 200, 200); 
      steps ++;
      if (steps == type2.length - 1) {
        steps = 0;
      }
    }
    steps = 0;
    if (typeM >= 2 && typeM < 3) {
      image(type3[steps], position, 350, 200, 200); 
      steps ++;
      if (steps == type3.length - 1) {
        steps = 0;
      }
    }
  }

  void loadMonsters() {
    mon.monHP = 100;
    mon.monSkill = 5;
    scake = loadImage("strawberrycake.png");
    type1 = new PImage[13];
    //87 pixels each. 90 high
    for (int n = 0; n < 13; n++) {
      type1[n] = scake.get(size1, 0, 87, 90);
      size1 += 87;
      if (n >= 8) {
        type1[n] = scake.get(size2, 90, 87, 90);
        size2 += 87;
      }
    }
    size1 = 0;
    size2 = 0;
    ccake = loadImage("chocolatecake.png");
    type2 = new PImage[10];
    //96 pixels each. 114 high
    for (int n = 0; n < 10; n++) {
      type2[n] = ccake.get(size1, 0, 96, 114);
      size1 += 96;
      if (n >= 3) {
        type2[n] = ccake.get(size2, 114, 96, 114);
        size2 += 96;
      }
    }
    size1 = 0;
    oox = loadImage("ox.png");
    //138 each, 111 high
    type3 = new PImage[5];
    for (int n = 0; n < 5; n++) {
      type3[n] = oox.get(size1, 0, 137, 111);
      size1 += 139;
    }
  }

  void fightPosition() {
    if (typeM < 1) {
      image(type1[steps], 900, 350, 200, 200); 
      steps ++;
      if (steps >= type1.length - 1) {
        steps = 0;
      }
    }
    if (typeM >= 1 && typeM < 2) {
      image(type2[steps], 900, 350, 200, 200); 
      steps ++;
      if (steps >= type2.length - 1) {
        steps = 0;
      }
    }
    if (typeM >= 2 && typeM < 3) {
      image(type3[steps], 900, 350, 200, 200); 
      steps ++;
      if (steps >= type3.length - 1) {
        steps = 0;
      }
    }
    showHP();
  }

  void showHP() {
    text("HP:", 1000, 50);
    text(monHP, 1050, 50);
  }
}

