//4,b
void setup() {
  Teacher myTeacher = new Teacher("Eddie Murphy", 40, false);
  
  println("Teacher's Name (før): " + myTeacher.name);

  myTeacher.changeName("Micheal Jackson");

//4,c
  println("Teacher's Name (After): " + myTeacher.name);
}
