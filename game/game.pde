float position; //to mark position of looping picture
float currentSpot; //to mark location of character;
float speed = 20;
PImage background;
boolean moveLeft, moveRight, moveUp;
float xPos, yPos;
color currentColor;
int level;
boolean check = false;
PImage boy, girl;

player play;
movement move;
screens menu;
monsters mon;

void setup() { 
  size(1150, 650);
  smooth();
  noStroke();
  frameRate(10);
  background = loadImage("background.png");
  image(background, 0, 0);
  level = 0;
  play = new player();
  menu = new screens();
  menu.startMenu();
  move = new movement();
  mon = new monsters();
  mon.typeM = random(2);
  mon.start();
}


void draw() {
  if (level == 0) { //start screen
    update(mouseX, mouseY);
    menu.clickGirl.display();
    menu.clickBoy.display();
    girl = loadImage("girlstanding.png");
    boy = loadImage("boystanding.png");
    image(girl, 505, 155);
    image(boy, 615, 155);
  } else if (level == 1) {
    //to loop background;
    image(background, int(position), 0);
    image(background.get(background.width-int(position), 0, int(position), background.height), 0, 0);     
    move.action(); // to move the character
    mon.action();
  }
}

//to control actions of the character 
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      moveLeft = true;
    } else if (keyCode == RIGHT) {
      moveRight = true;
    } else if (keyCode == UP) {
      moveUp = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT) {       
      moveLeft = false;
    } else if (keyCode == RIGHT) {
      moveRight = false;
    } else if (keyCode == UP) {
      moveUp = false;
    }
  }
}

//for buttons and menus
void update(int x, int y) {
  if (check == false) {
    menu.clickGirl.update();
    menu.clickBoy.update();
  } else {
    check = false;
  }
  if (mousePressed) {
    if (menu.clickGirl.pressed()) {
      play.gender = 1;
      play.start();
      level += 1;
    } else if (menu.clickBoy.pressed()) {
      play.gender = 0; 
      play.start();
      level += 1;
    }
  }
}

