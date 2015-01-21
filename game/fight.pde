class fight{

  boolean meet = false;
  PImage[] attack, hit, sword;
  PImage at, hi, sw;
  int size1, size2, size3, steps2, steps3, steps4;
  int damage;
  int monAttack;

  void encounter() {
    if (position < 650 && position > 100) {
      menu.startFight();
   
    update4(mouseX, mouseY);
      menu.clickRestart.display();
      textSize(12);
      fill(0);
      text("Restart", 0,0);
     
      if(toRestart==true){
        level=0;
       draw();
       
      
       //RESTART BUTTON RESETS. but then when choosing a character the game doesnt go on
    }
   
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
    update5(mouseX, mouseY);                      //SLOW DOWN SPECIAL ATTACK USING MILLIS and the resize animation doesnt show
    menu.clickSpecialAttack.display();
    textSize(12);
    fill(0);
    text("Special Attack!", 650, 165);
    if(SpAtk==true){
    int now= millis();
    textSize(25);
    fill(225, 3, 3);
    text("SPECIAL ATTACK!", 800,300);
  
  image(sword[steps4],950, 450, 200, 200);
    steps4 ++;
  
 
    if (steps4 >= sword.length - 1) {
      steps4 = 0;
    }
    image(sword[steps4], 900, 400, 100, 100);
  
    mon.monHP=0;
    SpAtk=false;
    checkHP(mon.monHP);
  
  
    }
  
    currentSpot = position;  
    
  }

  void hit(int skill) {
    damage = int(random(play.skill));
    if (level == 6) {
      dragon.bossHP = dragon.bossHP - damage;
    } else {
      mon.monHP = mon.monHP - damage;
    }
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
    if (level == 6) {
      checkHP(dragon.bossHP);
    } else {
      checkHP(mon.monHP);
    }
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
    gameOver(play.HP);
  }

  void checkHP(int HP) {                    
    if (HP <= 0) {
      level+=1;
      inFight = false;
      position = 0;
      mon.typeM = level;
      monKilled += 1;
      mon.monHP=100;
      
      
    }
  }

  void gameOver (int HP) {
    if (HP <= 0) {
      inFight = false;
      menu.gameOver();
    }
  }

  void loadEffects() {
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

