class Toast {
  int arcX, arcY, x, y;
  PImage toast;
  
  Toast() {
    arcX = int(random(1,3));
    if (arcX==1) {
      x = int(random(120,185));
    } else if (arcX==2) {
      x = int(random(419,488));
    }
    arcY = int(random(1,4));
    if (arcY==1) {
      y = int(random(183,208));
    } else if (arcY==2) {
      y = int(random(426,451));
    } else if (arcY==3) {
      y = int(random(662,690));
    }
    toast = loadImage("toast.png");
  }
  
  void display() {
    imageMode(CENTER);
    toast.resize(45,45);
    image(toast, x, y);
  }
}
