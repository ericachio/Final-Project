class fight {

  boolean meet = false;
  PImage[] attack, hit;
  PImage at, hi;
  int size1, size2, steps2, steps3;
  int skill, monSkill;

  void encounter() {
    if (position < 650 && position > 100) {
      menu.startFight();
      update2(mouseX, mouseY);
      move.stop();
      if (inFight == true) {
        battle();
      }
    } else {
      move.action();
    }
  }

  void battle() {
    menu.fightScreen();
    update3(mouseX, mouseY);
    if (inAttack == true) {
      effects();
    }
  }

  void hit() {
    float y = random(1);
    int z = (int)random(100);
    float x = skill/monSkill;
    
  }

  void loadEffects() {
    at = loadImage("playerattack.png");
    attack = new PImage[7];
    //276 across, 444 high
    for (int i = 0; i < 7; i++) {
      attack[i] = at.get(size1, 0, 276, 148);
      size1 += 270;
      if (i > 2 && i < 6) {
        attack[i] = at.get(size2, 148, 276, 148);
        size2 += 276;
      } else if (i == 6) {
        attack[i] = at.get(0, 296, 276, 148);
      }
    }
    size1 = 0;
    hi = loadImage("playerhit.png");
    hit = new PImage[4];
    //153 across, 134 high
    for (int i = 0; i < 4; i++) {
      hit[i] = hi.get(size1, 0, 153, 134);
      size1 += 153;
    }
  }

  void effects() {
    image(attack[steps2], 200, 350, 200, 200); 
    steps2 ++;
    if (steps2 >= attack.length - 1) {
      steps2 = 0;
    }
    image(hit[steps3], 890, 350, 200, 200);
    steps3 ++;
    if (steps3 >= hit.length - 1) {
      steps3 = 0;
    }
  }
}

