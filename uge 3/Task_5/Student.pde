class Student {
  String name;
  int age;
  boolean isFemale;
  int datamatikerTeam; // Skal eksistere!

  // Konstruktør til at oprette en student
  Student(String tmpName, int tmpAge, boolean tmpIsFemale, int tmpDatamatikerTeam) {
    this.name = tmpName;
    this.age = tmpAge;
    this.isFemale = tmpIsFemale;
    this.datamatikerTeam = tmpDatamatikerTeam;
  }
}
