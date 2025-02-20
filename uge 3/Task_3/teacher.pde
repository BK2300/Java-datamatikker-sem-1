class Teacher {
  String name;      
  int age;         
  boolean isFemale; 

  // Konstruktør der initialiserer en Teacher
  Teacher(String tmpName, int tmpAge, boolean tmpIsFemale) {
    this.name = tmpName;
    this.age = tmpAge;
    this.isFemale = tmpIsFemale;
  }

  void printInfo() {
    println("Teacher Name: " + name + ", Age: " + age + ", Female: " + isFemale);
  }
}
