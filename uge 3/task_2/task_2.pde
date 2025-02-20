boolean happy = true; // Global variabel

void setup() {
  if (iAmHappy()) {
    println("I clap my hands");
  } else {
    println("I don't clap my hands");
  }
}

// Metode der returnerer værdien af `happy`
boolean iAmHappy() {
  return happy; // Returnerer den globale variabel
}
