/* please implement your assign1 code in this file. */
PImage fighterImg;
PImage hpImg;
PImage treasureImg;
PImage enemyImg;
PImage bg1;
PImage bg2;
int fighterX,fighterY;
int hpX,hpY;
int bloodVolume;
int treasureX,treasureY;
int enemyX,enemyY;
int bg1X;
int bg2X;

void setup () {
  size(640,480) ; 
  fighterImg = loadImage("img/fighter.png");
  hpImg = loadImage("img/hp.png");
  treasureImg = loadImage("img/treasure.png");
  enemyImg = loadImage("img/enemy.png");
  bg1  = loadImage("img/bg1.png");
  bg2  = loadImage("img/bg2.png");
  bg1X =0;
  bg2X =-640;
  fighterX = 580;
  fighterY = 240;
  hpX = 10;
  hpY = 10;
  bloodVolume = floor(random(0,100));
  treasureX = floor(random(0,480));
  treasureY = floor(random(50,430));
  enemyX = 0;
  enemyY = floor(random(60,420));
}

void draw() {
  image(bg2,bg2X,0);
  bg2X++;
  image(bg1,bg1X,0);
  bg1X++;
  bg1X=bg1X-(int(bg1X/640)*1280);
  bg2X=bg2X-(int(bg2X/640)*1280);
  image(fighterImg,fighterX,fighterY);
  image(treasureImg,treasureX,treasureY);
  image(enemyImg,enemyX,enemyY);
  rectMode(CORNER);
  stroke(#ff0000);
  fill(#ff0000);
  rect(20,15,bloodVolume,25);
  image(hpImg,hpX,hpY);
  enemyX += 3;
  enemyX = enemyX%640;
}
