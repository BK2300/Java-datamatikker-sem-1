int tileSize = 40;  // Størrelsen af hvert felt
int cols = 8, rows = 8;  // Antal rækker og kolonner

void settings() {
  size(cols * tileSize, rows * tileSize); // ✅ Flyttet til settings()
}

void setup() {
  drawBoard(); // Tegn skakbrættet én gang i setup
}

void drawBoard() {
  for (int x = 0; x < cols; x++) {
    for (int y = 0; y < rows; y++) {
      if ((x + y) % 2 == 0) {
        fill(0); // Sorte felter
      } else {
        fill(255); // Hvide felter
      }
      rect(x * tileSize, y * tileSize, tileSize, tileSize);
    }
  }
}
