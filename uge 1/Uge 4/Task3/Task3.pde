// 3.a
String[] artists = {"KSI", "That dude", "Araba", "losers", "Juicy J."};

// 3.c
String[] hits = {"This is gay", "how can I be homophobic", "Obama sharwarma", "bitcoin rocks", "Juicy"};

void setup() {
  size(400, 200);
  printArtistsAndHits(); // 3.b + 3.d - Kalder metoden for at udskrive listen
}

// 3.b & 3.d
void printArtistsAndHits() {
  for (int i = 0; i < artists.length; i++) {
    println((i + 1) + ". " + artists[i] + " : \"" + hits[i] + "\"");
  }
}
