// 4.b - 4.h 
Circle[] circles = new Circle[10];  

void setup() {
  size(600, 400);

  // 4.i & 4.j
  for (int i = 0; i < circles.length; i++) {
    int x = int(random(width));  // Tilfældig x-position
    int y = int(random(height)); // Tilfældig y-position
    circles[i] = new Circle(x, y); // Opret og gem cirkel i arrayet
  }
}

void draw() {
  background(220);
  
  // 4.l
  for (Circle c : circles) {
    c.move(1, 1); // Flyt cirklen med +1 i x og y
    c.display();  // Tegn cirklen
  }
}

// 4.c
class Circle {
  float x, y;

  // 4.d
  Circle(float xpos, float ypos) {
    this.x = xpos;
    this.y = ypos;
  }

  // 4.f
  void display() {
    fill(0); 
    rect(x, y, 20, 20);
  }

  // 4.k
  void move(float dx, float dy) {
    x += dx;
    y += dy;
  }
}
