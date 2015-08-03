frame3D frame1;
frame3D frame2;
frame3D frame3;
frame3D frame4;
frame3D frame5;
frame3D frame6;
frame3D frame7;
frame3D frame8;
Player player;
float rotatex = 0;
float rotatey = 0;
boolean flipUp;
boolean flipDown;
boolean flipLeft;
boolean flipRight;
boolean moveUp;
boolean moveDown;
boolean moveRight;
boolean moveLeft;
color purple = color(176,183,255);
color blue = color(178,255,233);
color red = color(242,105,105);

void setup() {
  size(1000, 800, OPENGL);
  frame1 = new frame3D(purple, blue, red, -60, -20, -60, -20, -10, 60);
  frame2 = new frame3D(blue, red, purple, -10, 60, -60, -20, 20, 60);
  frame3 = new frame3D(red, purple, blue, -60, -10, -10, 60, 35, 60);
  frame4 = new frame3D(purple, blue, red, 0, 25, -10, 10, 20, 60);
  frame5 = new frame3D(blue, red, purple, 0, 25, 20, 60, 20, 60);
  frame6 = new frame3D(purple, blue, red, 35, 60, -10, 60, -60, 60);
  frame7 = new frame3D(red, blue, purple, 40, 60, -20, -60, -10, 10);
  frame8 = new frame3D(red, purple, blue, 40, 60, -20, -60, -60, -20);
  player = new Player(0,0);
}

void draw() {
  background(250);
  strokeWeight(0.4);
  stroke(70);
  // noStroke();
  frame1.display();
  frame2.display();
  frame3.display();
  frame4.display();
  frame5.display();
  frame6.display();
  frame7.display();
  frame8.display();
  player.display();
  player.update();
}

// void mouseDragged(){
//   float rate = 0.01;
//   rotatex += (pmouseY - mouseY) * rate;
//   rotatey += (mouseX - pmouseX) * rate;
// }

void keyReleased(){
  if (key == CODED){
    if (keyCode == UP) {
      flipUp = true;
      frame1.rotatex -= PI/4;
      frame2.rotatex -= PI/4;
      frame3.rotatex -= PI/4;
      frame4.rotatex -= PI/4;
      frame5.rotatex -= PI/4;
      frame6.rotatex -= PI/4;      
      frame7.rotatex -= PI/4;
      frame8.rotatex -= PI/4;
    }
    if (keyCode == DOWN) {
      flipDown = true;
      frame1.rotatex += PI/4;
      frame2.rotatex += PI/4;
      frame3.rotatex += PI/4;
      frame4.rotatex += PI/4;
      frame5.rotatex += PI/4;
      frame6.rotatex += PI/4;
      frame7.rotatex += PI/4;
      frame8.rotatex += PI/4;
    }
    if (keyCode == LEFT) {
      flipLeft = true;
      frame1.rotatey += PI/4;
      frame2.rotatey += PI/4;
      frame3.rotatey += PI/4;
      frame4.rotatey += PI/4;
      frame5.rotatey += PI/4;
      frame6.rotatey += PI/4;
      frame7.rotatey += PI/4;
      frame8.rotatey += PI/4;
    }
    if (keyCode == RIGHT) {
      flipRight = true;
      frame1.rotatey -= PI/4;
      frame2.rotatey -= PI/4;
      frame3.rotatey -= PI/4;
      frame4.rotatey -= PI/4;
      frame5.rotatey -= PI/4;
      frame6.rotatey -= PI/4;
      frame7.rotatey -= PI/4;
      frame8.rotatey -= PI/4;
    }
  }
}
void keyPressed(){
  if (key == 'w'){
    moveUp = true;
  }
  if (key == 's'){
    moveDown = true;
  }
  if (key == 'a'){
    moveLeft = true;
  }
  if (key == 'd'){
    moveRight = true;
  }
}
