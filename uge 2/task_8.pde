size(500, 500);
background(220);

int count = 0; // deafault count på antal cirkler

while (count < 105) {
  float x = random(width);
  float y = random(height);
  float d = random(10, 100); // Tilfældig diameter
  
  fill(random(255), random(255), random(255)); // forskellige farver opdelt i RGB og fra 0-255
  stroke(0);
  ellipse(x, y, d, d);
  
  count++; // samme some i++, øger count med 1 hvergang.
}
