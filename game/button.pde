class button {
  int x, y;
  int size;
  color baseColor, highlightColor;
  color currentColor;
  boolean over = false;
  boolean pressed = false;

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
  
  boolean over(){
   return true; 
  }
}

