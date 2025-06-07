// 1.a
int[] arr = {28, 230, 9, 310, 72};  

void setup() {
  size(400, 200);
  int randomNumber = getRandom(); // 1.c 
  println("Random number: " + randomNumber);
}

// 1.b
int getRandom() {
  int index = int(random(arr.length)); // Generer et tilfældigt indeks
  return arr[index];
}
