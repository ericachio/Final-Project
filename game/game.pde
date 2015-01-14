float position; //to mark position of looping picture
float currentSpot; //to mark location of character;
float speed = 20;
PImage background;
boolean moveLeft, moveRight, moveUp;
float xPos, yPos;
color currentColor;
player play;
movement move;
button menu;

void setup() { 
  size(1150, 650);
  smooth();
  noStroke();
  frameRate(10);
  menu = new button();
  menu.startMenu();
  play = new player();
  play.gender = 1; //sets player as girl for testing
  play.start();
  move = new movement();
  //background = loadImage("background.png");
  //image(background, 0, 0);
}


void draw() {
  //to loop background;
  /*
 image(background, int(position), 0);
   image(background.get(background.width-int(position), 0, int(position), background.height), 0, 0);     
   
   move.action(); // to move the character 
   */
}


/*
void randomM(){
 monster= new enemy();
 monster.typeM=0;//ghost
 }//need to add random way of choosing which monster the player will battle. possibly allow them to choose. monsters will have the same constant motion. player can not move when monster appears.
 */


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

