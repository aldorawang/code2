ArrayList<Invader>Invaders = new ArrayList<Invader>();

void setup() {
  size(600, 600); 
  background(255); 
  noStroke();
}

void draw() {
  background(255);
  for (int i = 0; i <Invaders.size(); i++) {
    Invader s = Invaders.get(i);
    s.display();
    s.move();
  }

  if (frameCount%60 == 0) {
    Invaders.add(new Invader());
  }
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
  float xPos, yPos;

  Invader() {
    xPos=random(0, width-100);
    yPos=random(0, height-100);
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
