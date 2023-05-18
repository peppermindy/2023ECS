// Mindy Phan | April 6, 2023 | Timeline

void setup() {
  size(950, 400);
}

void draw() {
  background(#F0DAC4);
  drawRef();
  histEvent(150, 200, "1964", true, "detail1");
  histEvent(250, 300, "1968", false, "detail2");
  histEvent(350, 200, "1972", true, "detail3");
  histEvent(450, 300, "1976", false, "detail4");
  histEvent(550, 200, "1980", true, "detail5");
  histEvent(650, 300, "1984", false, "detail6");
  histEvent(750, 200, "1988", true, "detail7");
  histEvent(850, 300, "1992", false, "detail8");
}

void drawRef() {
  textAlign(CENTER);
  textSize(35);
  fill(0);
  text("Kim Jung Gi Timeline", width/2, 60);
  textSize(20);
  text("by Mindy Phan", width/2, 90);
  strokeWeight(3);
  line(50, 250, 900, 250);
  strokeWeight(1);
  line(50, 245, 50, 255);
  line(900, 245, 900, 255);
  textSize(14);
  text("1960", 50, 270);
  text("2000", 900, 270);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  strokeWeight(2);
  if (top == true) {
    line(x, y, x-20, y+50);
  } else {
    line(x, y, x-20, y-50);
  }
  if (mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
    fill(#EAE1D7);
  } else {
    fill(#FFFAF5);
  }
  rectMode(CENTER);
  rect(x, y, 100, 30, 7);
  fill(0);
  text(title, x, y+5);
  if (mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
    if (top) {
      text(detail,width/2,150);
    } else {
      text(detail,width/2,360);
    }
  }
}
