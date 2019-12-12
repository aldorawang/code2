void setup() {
  size(600, 600);
}

void draw() {
  background(0); 

  for (int i = 2; i < 11; i = i+2) {
    for (int j = 2; j < 11; j = j+2) {
      text(str(i*j), i*50, j*50);
      //hint : str() converts an integer to a string
    }
  }
}
