class Pancake {
  int arcX, arcY, x, y;
  PImage pancake;
  
  Pancake() {
    arcX = int(random(1,3));
    if (arcX==1) {
      x = int(random(120,183));
    } else if (arcX==2) {
      x = int(random(419,488));
    }
    arcY = int(random(1,4));
    if (arcY==1) {
      y = int(random(183,208));
    } else if (arcY==2) {
      y = int(random(425,451));
    } else if (arcY==3) {
      y = int(random(662,690));
    }
    pancake = loadImage("pancake.png");
  }
  
  void display() {
    imageMode(CENTER);
    pancake.resize(45,45);
    image(pancake, x, y);
  }
}
