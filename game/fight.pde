class fight {

  boolean meet = false;
  PImage[] attack, hit, sword;
  PImage at, hi, sw;
  int size1, size2, size3, steps2, steps3, steps4;
  int damage;
  int monAttack;
  boolean leave = false;



  void encounter() {
    if (position < 650 && position > 100) {
      menu.startFight();
      update2(mouseX, mouseY);
      menu.clickStart.display();
      fill(0);
      text("Start", 575, 140);
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
    menu.clickAttack.display();
    fill(0);
    text("Attack", 575, 165);
    boolean go = true;
    int num = 0;
    if (inAttack == true) {
      hit(play.skill);
      inAttack = false;
    } else if (inAttack == false) {
      monAttack = int(random(10));
      if (monAttack == 0) {
        getHit(mon.monSkill);
      }
    }
    currentSpot = position;
  }

  void hit(int skill) {
    damage = int(random(play.skill));
    mon.monHP = mon.monHP - damage;
    textSize(30);
    fill(225, 3, 3);
    if (damage == 0) {
      text("MISS", 900, 300);
    } else {
      text("-" + damage, 900, 300);
    }
    image(sword[steps4], 950, 450, 100, 100);
    steps4 ++;
    if (steps4 >= sword.length - 1) {
      steps4 = 0;
    }
    image(sword[steps4], 900, 400, 100, 100);
    checkHP(mon.monHP);
  }

  void getHit(int skill) {
    damage = int(random(mon.monSkill));
    play.HP = play.HP - damage;
    textSize(30);
    fill(225, 3, 3);
    if (damage == 0) {
      text("MISS", 100, 400);
    } else {
      text("-" + damage, 100, 400);
    }
    image(hit[steps3], 100, 450, 100, 100);
    steps3 ++;
    if (steps3 >= hit.length - 1) {
      steps3 = 0;
    }
    checkHP(play.HP);
  }

  void checkHP(int HP) {
    if (HP <= 0) {
      inFight = false;
      position = 0;
      mon.monHP = 100;
    }
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
      if(i>2){delay(10000);} //tryna figure out how to slow down the attack
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
    size1 = 0;
    sw = loadImage("sword.png");
    sword = new PImage[4];
    //16 across, 20 high
    for (int i = 0; i < 4; i++) {
      sword[i] = sw.get(size1, 0, 16, 20);
      size1 += 16;
    }
  }
}

