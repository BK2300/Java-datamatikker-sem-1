// 5.a - Metode til at sammenligne teams
boolean isClassmates(Student s1, Student s2) {
  return s1.datamatikerTeam == s2.datamatikerTeam;
}

void setup() {
  // 5.c - Opret studerende
  Student student1 = new Student("Alice", 24, true, 1);
  Student student2 = new Student("Bob", 26, false, 1); // Samme team
  Student student3 = new Student("Charlie", 22, false, 2); // Andet team

  // Test om Alice og Bob er klassekammerater
  boolean result1 = isClassmates(student1, student2);
  println(student1.name + " and " + student2.name + (result1 ? " are classmates" : " are not classmates"));

  // Test om Alice og Charlie er klassekammerater
  boolean result2 = isClassmates(student1, student3);
  println(student1.name + " and " + student3.name + (result2 ? " are classmates" : " are not classmates"));
}
