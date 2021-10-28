PImage img;
class Ghost {
  int myX, myY;
  Ghost() {
    myX = 250;
    myY = 250;
  }
  void walk() {
    if(mouseX > myX) {
      myX = myX + (int)(Math.random()*9)-2;
    } else {
      myX = myX + (int)(Math.random()*9)-6;
    }
    if(mouseY > myY) {
      myY = myY + (int)(Math.random()*9)-2;
    } else {
      myY = myY + (int)(Math.random()*9)-6;
    }
  }
  void show() {
    fill(25,110,255);
    ellipse(myX, myY, 30, 30);
    rect(myX-15, myY, 30, 20);
    rect(myX-15, myY+20, 8, 10);
    rect(myX-5, myY+20, 10, 10);
    rect(myX+7, myY+20, 8, 10);
  }
}

Ghost[] ghostGang = new Ghost[6];

void setup() {
  size(704,702);
  img = loadImage("pacmanmaze4.png");
  background(img);
  //background(0);
  for(int i = 0; i < ghostGang.length; i++) {
    ghostGang[i] = new Ghost();
  }
}

void draw() {
  //img = loadImage("pacmanmaze4.png");
  background(img);
  //background(0);
  fill(0, 0, 0, 10);
  rect(0,0,500,500);
  for(int i = 0; i < ghostGang.length; i++) {
    ghostGang[i].walk();
    ghostGang[i].show();
  }
  fill(255,255,0);
  arc(mouseX, mouseY, 30, 30, QUARTER_PI, PI+QUARTER_PI+QUARTER_PI+QUARTER_PI, PI);
  /*
  ellipse(mouseX, mouseY, 30, 30);
  fill(0);
  triangle(mouseX,mouseY,mouseX+15,mouseY-15,mouseX+15,mouseY+15);
  */
}
