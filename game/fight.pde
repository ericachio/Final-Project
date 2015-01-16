class fight {

  boolean meet = false;

  void encounter() {
    if (position < 650 && position > 100) {
      menu.startFight();
      update2(mouseX, mouseY);
      move.stop();
      if (inFight == 1) {
        battle();
      }
    } else {
      move.action();
    }
  }

  void battle() {
    menu.fightScreen();
  }
}

