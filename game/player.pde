class player {

  PImage[] right, left; //to signify direction of character movement
  PImage a, b, c; //for the different states of character
  float gender; //for when there is the option of choosing gender
  int size; //set to load character into arrays
  int HP, skill; //

  void start() {
    HP = 100;
    skill = 10;
    if (gender == 0) {
      a = loadImage("boystanding.png");
      b = loadImage("boyright.png");
      c = loadImage("boyleft.png");
      right = new PImage[3];
      for (int i = 0; i < 3; i++) {
        right[i] = b.get (size, 0, 31, 32);
        size += 30;
      }
      size = 0;
      left = new PImage[3];
      for (int i = 0; i < 3; i++) {
        left[i] = c.get(size, 0, 31, 32);
        size += 30;
      }
    } else if (gender == 1) {
      a = loadImage("girlstanding.png");
      b = loadImage("girlright.png");
      c = loadImage("girlleft.png");
      right = new PImage[3];
      for (int i = 0; i < 3; i++) {
        right[i] = b.get(size, 0, 30, 32);
        size += 30;
      }
    }
    size = 0;
    left = new PImage[3];
    for (int i = 0; i < 3; i++) {
      left[i] = c.get(size, 0, 30, 32);
      size += 30;
    }
  }

  void fightPosition() {
   
      image(a, 100, 450, 75, 75);
    
  }

  void showHP() {
    text("HP:", 50, 50);
    text(HP, 100, 50);
  }
}

