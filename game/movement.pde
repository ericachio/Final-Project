class movement {

  int steps = 0;
  float xPos, yPos;

  //actions of the character, jump, walk right, walk left
  void action() {
    if (moveRight) {
      image(play.right[steps], 560, 450, 75, 75);
      position -= speed;
      currentSpot = position;
    } else if (moveLeft) {
      image(play.left[steps], 560, 450, 75, 75);
      position += speed; 
      currentSpot = position;
    } else if (moveUp) { //but character doesn't jump fora
      image(play.a, 560, 350, 75, 75);
      position = currentSpot;
    } else {
      image(play.a, 560, 450, 75, 75);
      position = currentSpot;
    }
    steps ++;
    if (steps > 2) {
      steps = 0;
    }
    if (position <= 0) {
      position = 1150;
    } else if (position >= 1150) {
      position = 0;
    }
  }

  void stop() {
    image(play.a, 560, 450, 75, 75);
    position = currentSpot;
    moveLeft = false;
    moveRight = false;
  }
}

