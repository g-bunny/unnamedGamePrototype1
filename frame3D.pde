public class frame3D
{
  color frontColor;
  color sideColor;
  color topColor;
  float smallX, smallY, smallZ, bigX, bigY, bigZ;
  float rotatex = 0;
  float rotatey = 0;

  frame3D(color frontColor, color sideColor, color topColor, float smallX, float bigX, float smallY, float bigY, float smallZ, float bigZ) {
    this.frontColor = frontColor;
    this.sideColor = sideColor;
    this.topColor = topColor;
    this.smallX = smallX;
    this.bigX = bigX;
    this.smallY = smallY;
    this.bigY = bigY;
    this.smallZ = smallZ;
    this.bigZ = bigZ;
  }

  void display() {

    pushMatrix();
    translate(width/2.0, height/2.0);

    rotateX(rotatex);
    rotateY(rotatey);
    scale(3);

    //front
    beginShape(QUADS);
    fill(frontColor);
    vertex(smallX, bigY, bigZ);
    vertex(bigX, bigY, bigZ);
    vertex(bigX, smallY, bigZ);
    vertex(smallX, smallY, bigZ);
    endShape();
    //right
    beginShape(QUADS);
    fill(sideColor);
    vertex(bigX, bigY, bigZ);
    vertex(bigX, bigY, smallZ);
    vertex(bigX, smallY, smallZ);
    vertex(bigX, smallY, bigZ); //<>//
    endShape();
    //back
    beginShape(QUADS);
    fill(frontColor);
    vertex(bigX, bigY, smallZ);
    vertex(smallX, bigY, smallZ);
    vertex(smallX, smallY, smallZ);
    vertex(bigX, smallY, smallZ);
    endShape();
    //left
    beginShape(QUADS);
    fill(sideColor);
    vertex(smallX, bigY, smallZ);
    vertex(smallX, bigY, bigZ);
    vertex(smallX, smallY, bigZ);
    vertex(smallX, smallY, smallZ);
    endShape();
    //top
    beginShape(QUADS);
    fill(topColor);
    vertex(smallX, bigY, smallZ);
    vertex(bigX, bigY, smallZ);
    vertex(bigX, bigY, bigZ);
    vertex(smallX, bigY, bigZ);
    endShape();
    //bot
    beginShape(QUADS);
    fill(topColor);
    vertex(smallX, smallY, smallZ);
    vertex(bigX, smallY, smallZ);
    vertex(bigX, smallY, bigZ);
    vertex(smallX, smallY, bigZ);
    endShape();

    popMatrix();
  }
  
  void rotateMe(){
    if (flipUp == true){
      rotatex -= PI/4;
      flipUp = false;
    }
    if (flipDown == true){
      rotatex += PI/4;
      flipDown = false;
    }
    if (flipLeft == true){
      rotatey += PI/4;
      flipLeft = false;
    }
    if (flipRight == true){
      rotatey -= PI/4;
      flipRight = false;
    }
  }
}
