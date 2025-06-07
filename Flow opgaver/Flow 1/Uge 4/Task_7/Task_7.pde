import java.util.ArrayList;

// 7.a 
ArrayList<Integer> intList = new ArrayList<Integer>();
ArrayList<String> strList = new ArrayList<String>();
ArrayList<Boolean> boolList = new ArrayList<Boolean>();

void setup() {
  size(400, 200);
  
  intList.add(1);
  intList.add(2);
  intList.add(3);

  // 7.b
  println("String List:");
  printStringList(strList);

  // 7.c
  int totalSum = sumOfIntegerList(intList);
  println("Summen af listen: " + totalSum);

  // 7.d
  float average = averageOfIntegerList(intList);
  println("Gennemsnittet af listen: " + average);
}

// 7.b
void printStringList(ArrayList<String> list) {
  for (String str : list) {
    println(str);
  }
}

// 7.c
int sumOfIntegerList(ArrayList<Integer> list) {
  int sum = 0;
  for (int num : list) {
    sum += num;
  }
  return sum;
}

// 7.d
float averageOfIntegerList(ArrayList<Integer> list) {
  if (list.isEmpty()) return 0; // Undgå division med 0
  return (float) sumOfIntegerList(list) / list.size();
}
