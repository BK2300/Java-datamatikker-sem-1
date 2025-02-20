class Teacher {
  String name;
  int age;
  boolean isFemale;

  // Konstruktør til at oprette en teacher
  Teacher(String tmpName, int tmpAge, boolean tmpIsFemale) {
    this.name = tmpName;
    this.age = tmpAge;
    this.isFemale = tmpIsFemale;
  }

  // Metode til at ændre lærerens navn
  void changeName(String newName) {
    this.name = newName;
  }
}
