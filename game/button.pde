class button extends screens {

  button(int ix, int iy, int iwidth, int iheight) {
    x = ix;
    y = iy;
    width = iwidth;
    height = iheight;
    color baseColor = color (225);
    currentColor = baseColor;
    color highlight = color(153);
  } 
  boolean over() {
    if (overButton(x, y, width, height)) {
      over = true;
      return true;
    } else {
      over = false;
      return false;
    }
  }
  void display() {
    stroke(225);
    fill(currentColor);
    rect(x, y, width, height);
  }
}

