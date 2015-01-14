class screens {
  int x, y;
  int height, width;
  boolean over = false;
  boolean pressed = false;
  PImage boy, girl;
  color currentColor;
  
  button clickGirl;
  button clickBoy;

  void update() {
    if (over()) {
      currentColor = color(153);
    } else {
      currentColor = color(225);
    }
  }

  boolean over(){
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
}


