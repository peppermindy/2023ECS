// Mindy Phan | Mar 23 2023 | Drawing
// Waddle Dee

void setup() {
  size(1000, 1000);
}

void draw() {
  background(0);
  noCursor();
  drawCreature(mouseX, mouseY);
  //drawCreature(200,500);
  //drawCreature(random(width),random(height));
}

void drawCreature(float x, float y) {
  noStroke();
  fill(#DB6204);
  ellipse(x-150, y+40, 90, 100); // Draws left arm
  ellipse(x+150, y+40, 90, 100); // Draws right arm
  fill(#FFD750);
  ellipse(x-80, y+150, 115, 90); // Draws left foot
  ellipse(x+80, y+150, 115, 90); // Draws right foot
  fill(#DB6204);
  ellipse(x, y+10, 300, 292); // Draws head base
  fill(#FFEBCB);
  ellipse(x, y-15, 200, 200); // Colors in face
  ellipse(x, y+45, 250, 187);
  fill(#F7BB98);
  ellipse(x-90, y+15, 45, 30); // Draws left blush
  ellipse(x+90, y+15, 45, 30); // Draws right blush
  drawEyes(x, y);
  drawBandana(x, y-70);
}

void drawEyes(float x, float y) {
  stroke(0);
  strokeWeight(5);
  fill(#814C0C);
  ellipse(x-42, y-10, 40, 90); // Draw the left eye
  ellipse(x+42, y-10, 40, 90); // Draw the right eye
  strokeWeight(0);
  fill(0);
  ellipse(x-42, y-15, 40, 55); // Fill in left eye
  ellipse(x+42, y-15, 40, 55); // Fill in right eye
  fill(255);
  ellipse(x-42, y-35, 25, 33); // Draw the left highlight
  ellipse(x+42, y-35, 25, 33); // Draw the right highlight
}

void drawBandana(float x, float y) {
  noStroke();
  fill(#5062FF);
  ellipse(x+110, y-70, 120, 80); // Draws right bandana bow
  fill(0);
  ellipse(x+80, y-90, 130, 90);
  fill(#5062FF);
  ellipse(x+70, y-90, 100, 110); // Draws left bandana bow
  fill(0);
  ellipse(x+50, y-70, 100, 110);
  fill(#5062FF);
  arc(x, y, 250, 170, PI, TWO_PI);
}
