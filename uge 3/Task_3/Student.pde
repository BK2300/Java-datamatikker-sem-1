class Student {
  String name;
  int age;
  boolean isFemale;
  int datamatikerTeam;

  // Konstruktør der initialiserer en student med 4 parametre
  Student(String tmpName, int tmpAge, boolean tmpIsFemale, int tmpDatamatikerTeam) {
    this.name = tmpName;
    this.age = tmpAge;
    this.isFemale = tmpIsFemale;
    this.datamatikerTeam = tmpDatamatikerTeam;
  }

  void printInfo() {
    println("Name: " + name + ", Age: " + age + ", Female: " + isFemale + ", Team: " + datamatikerTeam);
  }
}
