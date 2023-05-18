// Mindy Phan | 27 April 2023 | Final Project
boolean play;
Player p1;
Pancake a1;
Pie i1;
Toast t1;
int score, level;
float aDist, iDist, tDist;
PImage map;

void setup() {
  size (600, 800);
  p1 = new Player();
  a1 = new Pancake();
  i1 = new Pie();
  t1 = new Toast();
  score = 0;
  level = 1;
  play = false;
  map = loadImage("map.png");
}

void draw() {
  aDist = dist(p1.x, p1.y, a1.x, a1.y);
  iDist = dist(p1.x, p1.y, i1.x, i1.y);
  tDist = dist(p1.x, p1.y, t1.x, t1.y);
  println(aDist, iDist, tDist);
  if (!play) {
    startScreen();
  } else {
    background(250, 239, 225);
    //background (255, 237, 238);
    drawBackground();
    infoPanel();
    a1.display();
    i1.display();
    t1.display();
    p1.display();

    if (keyPressed) {
      if (key == 'w') {
        p1.move('w');
      } else if (key == 'a') {
        p1.move('a');
      } else if (key == 's') {
        p1.move('s');
      } else if (key == 'd') {
        p1.move('d');
      }
    }

    if (aDist<25) {
      score = score + 100;
      a1 = new Pancake();
    } else if (iDist<25) {
      score = score + 50;
      i1 = new Pie();
    } else if (tDist<25) {
      score = score + 20;
      t1 = new Toast();
    }

    if (score >level*500) {
      level = level + 1;
    }

    if (frameCount>4000) {
      gameOver();
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (key == UP) {
      p1.move('w');
    } else if (key == LEFT) {
      p1.move('a');
    } else if (key == DOWN) {
      p1.move('s');
    } else if (key == RIGHT) {
      p1.move('d');
    }
  }
  if (key == ' ') {
    play = true;
  }
}

void drawBackground() {
  imageMode(CENTER);
  image(map, width/2, 450);
  map.resize(507, 648);
}

void startScreen() {
  background(196, 179, 210);
  fill(255);
  textAlign(CENTER);
  textSize(35);
  text("Restaurant Game", width/2, 340);
  textSize(28);
  text("by Mindy Phan", width/2, 372);
  textSize(28);
  text("PRESS THE SPACE BAR TO START", width/2, 425);
}

void gameOver() {
  background(196, 179, 210);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("GAME OVER", width/2, 340);
  textSize(28);
  text("Score: " + score, width/2, 395);
  text("You reached level " + level, width/2, 425);
  noLoop();
}

void infoPanel() {
  fill(196, 179, 210);
  //fill(196, 179, 210, 128);
  rect(0, 0, width, 50);
  fill(255);
  textSize(22);
  text("SCORE: " + score, 400, 33);
  text("TIME: " + frameCount/50, 50, 33);
  text("LVL: " + level, 200, 33);
}
