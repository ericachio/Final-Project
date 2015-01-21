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
boolean inFight = false;
boolean   inAttack = false;
boolean leave = false;
int monKilled;
int monShow;
boolean toRestart = false;
boolean SpAtk= false;

player play;
movement move;
screens menu;
monsters mon;
fight game;
boss dragon;

void setup() { 
  size(1150, 650);
  smooth();
  noStroke();
  frameRate(10);
  background = loadImage("background.png");
  image(background, 0, 0);
  
  play = new player();
  menu = new screens();
  menu.startMenu();
  move = new movement();
  mon = new monsters();
  mon.loadMonsters();
  mon.typeM = level;
  game = new fight();
  game.loadEffects();
  monShow = 1;
  dragon = new boss();
  dragon.start();
}


void draw() {
  if (level==7) {
      menu.youWin();  
    }
    else{
 //to loop background;
    image(background, int(position), 0);
    image(background.get(background.width-int(position), 0, int(position), background.height), 0, 0);  
    textAlign(CENTER);
    textSize(30);
    text("Level "+""+level, 575, 50); 
  if (level == 0) { //start screen
   menu.startMenu();
    update1(mouseX, mouseY);
    menu.clickGirl.display();
    menu.clickBoy.display();
    girl = loadImage("girlstanding.png");
    boy = loadImage("boystanding.png");
    image(girl, 505, 155);
    image(boy, 615, 155);
  } else{
   if(level==6){

    dragon.action();
    game.encounter();
    game.gameOver(play.HP);
    
}
else{ 
    mon.action();
    game.encounter();
    game.gameOver(play.HP);
    if(level==3){
      textSize(14);
      fill(0);
      
      text("You're halfway through! You deserve more healthpoints!", 200,90);
      play.HP=100;}
  if (mon.monHP==0) {
      level += 1;
      monKilled +=1;
    }

}}}}


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
//to pick character
void update1(int x, int y) {
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

//to start game
void update2(int x, int y) {
  if (check == false) {
    menu.clickStart.update();
  } else {
    check = false;
  }
  if (mousePressed) {
    if (menu.clickStart.pressed()) {
      inFight = true;
    }
  }
}

void update3(int x, int y) {
  if (check == false) {
    menu.clickAttack.update();
  } else {
    check = false;
  }
  if (mousePressed) {
    if (menu.clickAttack.pressed()) {
      inAttack = true;
    }
  }
  
}
//to restart the game
void update4(int x, int y){
  if(check== false){
    menu.clickRestart.update();
  }
  else{
    check=false;
  }
  if (mousePressed){
    if(menu.clickRestart.pressed()){
      toRestart=true;
    }
    }
}

//for specialattack
void update5(int x, int y){
  if(check==false){
    menu.clickSpecialAttack.update();
  }
  else{check= false;}
  if(mousePressed){
    if(menu.clickSpecialAttack.pressed()&&mon.monHP<=50){
      SpAtk=true;}
  }
}
        

