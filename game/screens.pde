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
  button clickRestart;

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
    fill(0);
    textSize(30);
    text("Save the forest from the monsters!", 550, 100); 
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
    fill(0);
    textSize(30);
    text("You've Encountered A Monster!", 575, 100); 
    textSize(15);
    clickStart = new button(555, 125, 40, 20);
    clickStart.display();
    fill(0);
    textSize(15);
    clickRestart= new button(0,0, 40, 20);
    clickRestart.display();
  }

  void fightScreen() {
    background = loadImage("background.png");
    image(background, 0, 0);
    fill(0);
    textSize(15);
    clickRestart= new button(0,0, 40, 20);
    clickRestart.display();
    textAlign(CENTER);
    fill(0);
    textSize(30);
    text("What are you going to do?", 575, 125);
    textSize(15);
    clickAttack = new button(555, 150, 40, 20);
    clickAttack.display();
    fill(0);
    if (level == 6) {
      dragon.fightPosition();
      dragon.showHP();
    } else {
      mon.showHP();
      mon.fightPosition();
    }
    play.showHP();
    play.fightPosition();
  }

  void gameOver() {
    background(0);
    fill(225, 0, 0);
    textSize(50);
    textAlign(CENTER);
    text("GAME OVER", 575, 300);
  }

  void youWin() {
    background(0);
    fill(225);
    textSize(50);
    textAlign(CENTER);
    text("You Win!", 575, 300);

  }


}


