int[][] board = new int[8][8]; // 6.a Opret array
int sideLength = 40;

void setup() {
  size(8 * sideLength, 8 * sideLength); // Sæt vinduesstørrelsen
  createBoard(); // 6.b
}

void draw() {
  drawBoard(); // 6.c og 6.d - Tegn skakbrættet
}

void createBoard() {
  for (int x = 0; x < 8; x++) {
    for (int y = 0; y < 8; y++) {
      // Skiftevis 0 og 1 baseret på (x + y) % 2
      board[x][y] = (x + y) % 2;
    }
  }
}

void drawBoard() {
  for (int x = 0; x < 8; x++) {
    for (int y = 0; y < 8; y++) {
      // 6.d
      if (board[x][y] == 0) {
        fill(0); // Sort
      } else {
        fill(255); // Hvid
      }
      
      // 6.c
      rect(x * sideLength, y * sideLength, sideLength, sideLength);
    }
  }
}
