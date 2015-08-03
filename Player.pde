class Player
{
  PImage fez;
  float x;
  float y;
  float velocity;
  float maxVelocity;
  
  Player(float x, float y){
    this.x = x;
    this.y = y;
    
    maxVelocity = 10.1;
  }
  
  void display(){
    fez = loadImage("fez.png");
    pushMatrix();
    translate(x,y);
    image(fez, width/2, 80, 61, 75);
    popMatrix();
  }
  
  void update(){
    if (moveUp) {
      y = y - 10;
      moveUp = false;
    }
    if (moveLeft) {
      x = x - 10;
      moveLeft = false;
    }
    if (moveRight) {
      x = 1 + 10;
      moveRight = false;
    }
    if (moveDown) {
      y = y + 10;
      moveDown = false;
    } 
  }
  
}
