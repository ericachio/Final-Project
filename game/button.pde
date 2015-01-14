class button {
  int x, y;
  int size;
  color baseColor, highlightColor;
  color currentColor;
  boolean over = false;
  boolean pressed = false;

  void setup() {
    size(1150, 600);
    color baseColor = color (102);
    currentColor = baseColor;
    startMenu();
  }

  void update() {
    if (over()) {
      currentColor = highlightColor;
    } else {
      currentColor = baseColor;
    }
  }

  boolean pressed() {
    if (over) {
      //locked = true;
      return true;
    } else {
      //locked = false;
      return false;
    }
  }
  boolean overRect(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x + width &&
      mouseY >= y && mouseY <= y + height) {
      return true;
    } else {
      return false;
    }
  }
  void startMenu() {
    textAlign(CENTER);
    text("Start Game", 575, 100); 
    color buttonColor = color (0);
    color highlight = color(153);
    rectButton(575, 200, 40, buttonColor, highlight);
    display();
    rectButton(600, 200, 40, buttonColor, highlight);
    display();
  }
  void rectButton(int ix, int iy, int isize, color icolor, color ihighlight) {
    x = ix;
    y = iy;
    size = isize;
    baseColor = icolor;
    highlightColor = ihighlight;
    currentColor = baseColor;
  } 
  boolean over() {
    if (overRect(x, y, size, size)) {
      over = true;
      return true;
    } else {
      over = false;
      return false;
    }
  }
  void display() {
    stroke(225);
    fill(currentColor);
    rect(x, y, size, size);
  }
}

