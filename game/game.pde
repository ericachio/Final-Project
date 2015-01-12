float position = 0;
float currentSpot;
float speed = 20;
PImage[] right,left;
int steps = 0;
PImage d;
PImage a,b,c;
int size;
float xPos;
boolean moveLeft, moveRight;


void setup(){ 
  size(1150,650);
  smooth();
  noStroke();
  a = loadImage("boyright.png");
  right = new PImage[3];
  for (int i = 0; i < 3; i++){
    right[i] = a.get(size, 0, 30, 31);
    size += 30; 
  }
  size = 0;
  b = loadImage("boyleft.png");
  left = new PImage[3];
  for (int i = 0; i < 3; i++){
    left[i] = b.get(size, 0, 30, 31);
    size += 30; 
  }
  c = loadImage("boystanding.png");
  frameRate(10);
  d = loadImage("background.png");
  image(d, 0, 0);
  moveLeft = false;
  moveRight = false;
  xPos = width/2;
}
/*
void draw(){
  d = loadImage("forest.png");
  image(d, 0, 0);
  image(images[counter], size, 400, 50, 50);
  counter ++;
    if (counter > 2){
      counter = 0; 
  }
  size = size + 4;
    if (size > 750){
      size = 0;
    }
}
*/


void draw(){
  image(d, int(position), 0);
  image(d.get(d.width-int(position), 0, int(position), d.height), 0, 0);
  if (moveRight){
    xPos += 10;
    image(right[steps], xPos, 450, 50, 50);
    position -= speed;
    currentSpot = position;
  } else if (moveLeft){
    xPos -= 10;
    image(left[steps], xPos, 450, 50, 50);
    position += speed; 
    currentSpot = position;
  } else {
    image(c, xPos, 450, 50, 50); 
    position = currentSpot; 
  }
  steps ++;
  if (steps > 2){
    steps = 0; 
  }
  if (position <= 0){
    position = 1150;
  }else if (position >= 1150){
    position = 0;
  }
  
}

void keyPressed(){
 if (key == CODED){
   if(keyCode == LEFT){
    moveLeft = true; 
   }else if (keyCode == RIGHT){
     moveRight = true;
   }
 } 
}

void keyReleased(){
  if (key == CODED){
   if(keyCode == LEFT){
    moveLeft = false; 
   }else if (keyCode == RIGHT){
     moveRight = false;
   }
 } 
}
