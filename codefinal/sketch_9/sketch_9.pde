Invader myInvader;
void setup() {
  myInvader = new Invader();
  size(600, 600); 
  background(255); 
  noStroke();
}

void draw() {
  background(255);
  myInvader.display();
  myInvader.move();
}

class Invader {
  int grid[][] = {{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, 
    {0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, 
    {0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0}, 
    {0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0}, 
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
    {1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1}, 
    {1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1}, 
    {0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0}
  };
  int rows = 8, cols = 11; 
  int size; 
  int xPos, yPos;

  Invader() {
    xPos=200;
    yPos=200;
    size=10;
  }

  void display() {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (grid [i][j] == 1) {
          fill(0);
        } else {
          fill(255);
        }
        rect(xPos+j*size, yPos+i*size, size, size);
      }
    }
  }

  void move() {
    float r = random(0, 1);
    if (r <= .25) {
      xPos ++;
    }
    //finish the logic here!
    else if (r>0.25&&r<=0.5) {
      yPos --;
    } else if (r>0.5&&r<=0.75) {
      yPos ++;
    } else if (r>0.75) {
      xPos --;
    }
  }
}
