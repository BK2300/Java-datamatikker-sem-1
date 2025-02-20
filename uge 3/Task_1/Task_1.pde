void setup() {
  printMessage();

  printText("This is a parameterized message!");

  printNameAndAge("Babak", 29);
}

void printMessage() {
  println("Hello from the method");
}

void printText(String text) {
  println(text);
}

void printNameAndAge(String name, int age) {
  println("My name is " + name + ", I am " + age + " years old.");
}
