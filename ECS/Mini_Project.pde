// James Stacey | 3/18/26 | Mini Project
int score = 0;

float targetX = 400;
float targetY = 300;
float targetSize = 80;

void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(216);
  fill(255, 0, 0);
  ellipse(targetX, targetY, targetSize, targetSize);


  fill(0);
  textSize(32);
  text("Score: " + score, 20, 40);
}

void mousePressed() {

  float distance = dist(mouseX, mouseY, targetX, targetY);

  if (distance < targetSize / 2) {
    score = score + 1;

    targetX = random(targetSize / 2, width - targetSize / 2);
    targetY = random(targetSize / 2, height - targetSize / 2);
  }
}
