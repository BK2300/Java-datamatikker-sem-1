void setup() {
  size(400, 200); // Sætter en vinduesstørrelse (ikke nødvendig, men Processing kræver en setup())
  println("Test af printPartOfWord:");
  printPartOfWord("København", 0, 3);  // Skal printe "Køb"
  printPartOfWord("Programmering", 4, 8); // Skal printe "gram"
  printPartOfWord("Java", 0, 2); // Skal printe "Ja"

  // Test af ugyldige input
  printPartOfWord("Test", -1, 3); // Skal give fejlmeddelelse
  printPartOfWord("Test", 3, 1);  // Skal give fejlmeddelelse
  printPartOfWord("Test", 2, 10); // Skal give fejlmeddelelse
  printPartOfWord("", 0, 2); // Skal give fejlmeddelelse
}

// Metode til at udskrive en del af et ord
void printPartOfWord(String word, int startIndex, int endIndex) {
  // Fejlhåndtering for ugyldige input
  if (word == null || word.isEmpty()) {
    println("Fejl: Strengen er tom eller null.");
    return;
  }
  if (startIndex < 0 || endIndex > word.length() || startIndex >= endIndex) {
    println("Fejl: Ugyldige indeksværdier. Start skal være >= 0, slut skal være <= " + word.length() + ", og start skal være mindre end slut.");
    return;
  }

  // Udskriv substring fra startIndex til endIndex
  String result = word.substring(startIndex, endIndex);
  println("Udsnit: " + result);
}
