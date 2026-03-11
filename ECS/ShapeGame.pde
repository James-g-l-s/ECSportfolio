// James Stacey | 3/4/2026 | ShapeGame
int x;
int y;
int tx, ty, score;
float tw;
PImage GeoPlayer;
PImage GeoCoin;

void setup() {
  size(800, 800);
  x = width/2;
  y = height/2;
  tx = int(random(20, width-20));
  ty = int(random(20, height-20));'
  tw=200.0;
  score = 0;
  GeoPlayer = loadImage("GeoPlayer.png");
  GeoCoin = loadImage("GeoCoin.png");
 
}

void draw() {
  background (127);
  scorePanel();
  target();
  imageMode(CENTER);
  image(GeoPlayer,x,y);
  //ellipse(x, y, 20, 20);
}

void target () {
  float d = dist(x, y, tx, ty);
  println(d);
  println (score);
  rectMode(CENTER);
  if(tw<5) {
    gameOver();
  }
  image(GeoCoin,tx,ty);
  tw=tw-0.15;
  GeoCoin.resize(int(tw),int(tw));
  //rect(tx, ty, 50, 50);
  if (d<tw/2) {
    score = score +20;
    tx = int(random(20, width-20));
    ty = int(random(20, height-20));
    tw=200.0;
  
  }
  
}

void scorePanel() {
  rectMode (CENTER);
  fill(127,220);
  rect(width/2, 15, width, 30);
  fill(0);
  textSize(30);
  text("Score:" + score, 20,25);
} 

void gameOver () {
  background(0);
  fill(255,0,0);
  textMode(CENTER);
  textSize(40);
  text("GAME OVER", width/2, height/2);
  noLoop();
}


void keyPressed() {
  if (x > width) {
    x = 0;
  }

  if (x < 0) {
    x = width;
  }

  if (y > height) {
    y = 0;
  }

  if (y < 0) {
    y=height;
  }

  //WASD and Arrow Movement
  if (key == 'w' || key == 'W' || keyCode == UP ) {
    y = y-10;
  } else if (key == 's' || key == 'S' || keyCode == DOWN) {
    y = y+10;
  } else if (key == 'd' || key == 'D' || keyCode == RIGHT) {
    x = x+10;
  } else if (key == 'a' || key == 'A' || keyCode ==LEFT) {
    x = x-10;
  }
}
