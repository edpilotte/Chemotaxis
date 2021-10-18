 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	//lots of java!   
 }    
 
 class Ghost {
  int myX, myY;
  Ghost() {
    myX = 250;
    myY = 250;
  }
  void walk() {
    myX = myX + (int)(Math.random()*9)-4;
    myY = myY + (int)(Math.random()*9)-4;
  }
  void show() {
    ellipse(myX, myY, 30, 30);
    rect(myX-15, myY, 30, 20);
    rect(myX-15, myY+20, 8, 10);
    rect(myX-5, myY+20, 10, 10);
    rect(myX+7, myY+20, 8, 10);
  }
}

Ghost[] ghostGang = new Ghost[6];

void setup() {
  size(500,500);
  background(0);
  for(int i = 0; i < ghostGang.length; i++) {
    ghostGang[i] = new Ghost();
  }
}

void draw() {
  background(0);
  /*
  fill(0, 0, 0, 10);
  rect(0,0,500,500);
  */
  for(int i = 0; i < ghostGang.length; i++) {
    ghostGang[i].walk();
    ghostGang[i].show();
  }
}
