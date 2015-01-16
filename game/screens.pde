class screens {
  int x, y;
  int height, width;
  boolean over = false;
  boolean pressed = false;
  PImage boy, girl;
  color currentColor;

  button clickGirl;
  button clickBoy;
  button clickStart;
  button clickAttack;

  void update() {
    if (over()) {
      currentColor = color(153);
    } else {
      currentColor = color(225);
    }
  }

  boolean over() {
    return true;
  }

  boolean pressed() {
    if (over) {
      check = true;
      return true;
    } else {
      check = false;
      return false;
    }
  }
  boolean overButton(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x + width &&
      mouseY >= y && mouseY <= y + height) {
      return true;
    } else {
      return false;
    }
  }
  void startMenu() {
    textAlign(CENTER);
    textSize(30);
    text("Start Game", 575, 100); 
    textSize(15);
    text("Pick Your Character:", 575, 125);
    clickGirl = new button(500, 150, 40, 40);
    clickGirl.display();
    girl = loadImage("girlstanding.png");
    boy = loadImage("boystanding.png");
    image(girl, 510, 155);
    image(boy, 620, 155);
    clickBoy = new button(610, 150, 40, 40);
    clickBoy.display();
  }

  void startFight() {
    textAlign(CENTER);
    textSize(30);
    text("You've Encountered A Monster", 575, 100); 
    textSize(15);
    clickStart = new button(555, 125, 40, 20);
    clickStart.display();
    fill(0);
    text("Start", 575, 140);
  }

  void fightScreen() {
    background = loadImage("background.png");
    image(background, 0, 0);
    textAlign(CENTER);
    textSize(30);
    text("What are you going to do?", 575, 125);
    textSize(13);
    clickAttack = new button(555, 150, 40, 20);
    clickAttack.display();
    update3(mouseX, mouseY);
    showHP();
    mon.fightPosition();
    play.fightPosition();
  }
}

