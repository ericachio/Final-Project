float position; //to mark position of looping picture
float currentSpot; //to mark location of character;
float speed = 20;
int steps = 0;
PImage d;
int size;
boolean moveLeft, moveRight, moveUp;
float xPos, yPos;
player play;
movement move;

void setup(){ 
  size(1150,650);
  smooth();
  noStroke();
  frameRate(10);
  play = new player();
  play.gender = 1;
  play.start();
  move = new movement();
  d = loadImage("background.png");
  image(d, 0, 0);
}

void draw(){
  image(d, int(position), 0);
  image(d.get(d.width-int(position), 0, int(position), d.height), 0, 0);
        
  move.action(); // to move the character
  
}


//to control actions of the character 
void keyPressed(){
  if (key == CODED){
    if(keyCode == LEFT){
      moveLeft = true; 
      }else if (keyCode == RIGHT){
      moveRight = true;
    }else if (keyCode == UP){
      moveUp = true;
      }
  }
}

void keyReleased(){
  if (key == CODED){
    if(keyCode == LEFT){       
      moveLeft = false; 
      }else if (keyCode == RIGHT){
      moveRight = false;
    }else if (keyCode == UP){
      moveUp = false;
    }
  } 
}

