float x = 600;
float speed = 20;
PImage[] right,left;
int counter = 0;
PImage d;
PImage a,b,c;
int size;
float xPos;
boolean moveLeft, moveRight;


void setup(){ 
  size(800,600);
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
  d = loadImage("forest.png");
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
  image(d, int(x), 0);
  image(d.get(d.width-int(x), 0, int(x), d.height), 0, 0);
  counter ++;
    if (counter > 2){
      counter = 0; 
  }
  if (moveRight){
    xPos += 10;
    image(right[counter], xPos, 450, 50, 50);
    x -= speed;
  } else if (moveLeft){
    xPos -= 10;
    image(left[counter], xPos, 450, 50, 50);
    x += speed;
  } else {
    image(c, xPos, 450, 50, 50); 
    x = speed;
  }
  if (x <= 0){
    x = 600; 
  }else if (x >= 600){
    x = 0;
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
