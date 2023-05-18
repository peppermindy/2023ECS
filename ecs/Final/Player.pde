class Player {
  int x, y;
  PImage player, leftplayer;

  Player() {
    x = width/2;
    y = height - 100;
    player = loadImage("player.png");
  }

  void display() {
    imageMode(CENTER);
    player.resize(53, 53);
    image(player, x, y);
    if (x>width) {
      x=20;
    } else if (x<0) {
      x=width-20;
    } else if (y>height) {
      y=75;
    } else if (y<75) {
      y=height-20;
    }
  }

  void move (char dir) {
    if (dir == 'w') {
      y = y - 5;
    } else if (dir == 'a') {
      x = x - 5;
    } else if (dir == 's') {
      y = y + 5;
    } else if (dir == 'd') {
      x = x + 5;
    }
  }
}
