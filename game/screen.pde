class screen {

  PImage background;
  int gender;
  boolean boyClick = false;
  boolean girlClick = false;
  int boyX, boyY, girlX, girlY;
  int boySize = 40;
  int girlSize = 40;
  boolean clickBoy, clickGirl;

  void startMenu(){
    background = loadImage("background.png");
    image(background, 0, 0);
    textSize(32);
    text("Start Game!", 500, 200);
    text("Who would you like to be?", 400, 250);
    rect(400, 300, 40, 40);
    rect(775, 300, 40, 40);
    fill(0, 0, 0);
    text("Boy", 400, 375);
    text("Girl", 775, 375);
  }

  void draw() {
    if (boyClick) {
      text("BOYY", 0, 0);
    }
  }

  void mousePressed() {
    if (clickBoy) {
      gender = 0;
    }else if (clickGirl){
      gender = 1;
    }
  }

  void update(int x, int y) {
    if (boyClick(boyX, boyY, boySize)) {
      clickBoy = true;
      clickGirl = false;
    } else if (girlClick(girlX, girlY, girlSize)){
      
    }
  }

  boolean boyClick(int x, int y, int size) {
    if (mouseX >= x && mouseX <= x + size &&
      mouseY >= y && mouseY <= y + size) {
      return true;
    } else {
      return false;
    }
  }
}

