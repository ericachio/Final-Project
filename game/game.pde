float x = 1;
float speed = 1;
PImage[] images;
int counter = 0;
PImage d;
PImage a;
int size = 0;


void setup(){ 
  size(800,600);
  smooth();
  rectMode(CENTER);
  noStroke();
  a = loadImage("characters.png");
  images = new PImage[3];
  //b = loadImage("forest.png");
  for (int i = 0; i < 3; i++){
    images[i] = a.get(size, 0, 30, 31);
    size += 30; 
  }
  frameRate(30);
  
  
}

void draw(){
  d = loadImage("forest.png");
  image(d, 0, 0);{
  image(images[counter], size, 400);
  counter ++;
    if (counter > 2){
      counter = 0; 
  }
  size ++;
    if (size > 750){
      size = 0;
    }
    
  }
   
  
}

//void draw(){
  //x+= speed;
  //x%= height;
  //image(d, int(x), 0);
  //image(d.get(d.width-int(x), 0, int(x), d.height), 0, 0);
//}
