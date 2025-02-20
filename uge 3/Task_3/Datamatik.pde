void setup() {
  Teacher myTeacher = new Teacher("John Smith", 40, false);

  Student student1 = new Student("Babak", 29, false, 1);
  Student student2 = new Student("Alice", 24, true, 2);

  println("Teacher's Name: " + myTeacher.name);

  println("Student 1: " + student1.name + " - Team: " + student1.datamatikerTeam);
  println("Student 2: " + student2.name + " - Team: " + student2.datamatikerTeam);
}
