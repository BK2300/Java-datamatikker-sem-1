// 4.b - Erklærede variabler fra Task 3 i det globale scope
String address;
int sum;
float divisionResult;
String besked;

void setup() {
    // 4.b - Tildel værdier til variablerne
    address = "Main Street 123";
    int a = 10;
    int b = 5;
    sum = a + b;
    divisionResult = (float) a / b;
    besked = "Velkommen til programmet!";

    // 4.c - Udskriv variablerne med labels
    println("Adresse: " + address);
    println("Sum: " + sum);
    println("Division Result: " + divisionResult);
    println("Besked: " + besked);

    // 4.d - Tildel nye værdier og udskriv igen
    address = "Elm Street 456";
    sum = 20 + 15;
    divisionResult = (float) 50 / 7;
    besked = "Ny besked: Goddag!";
    
    println("\nEfter opdatering:");
    println("Adresse: " + address);
    println("Sum: " + sum);
    println("Division Result: " + divisionResult);
    println("Besked: " + besked);

    // 4.e - Tilføj værdier uden at overskrive de eksisterende
    address += ", Apt 7B"; 
    sum += 10; 
    divisionResult += 2.5;
    besked += " Hvordan har du det?";
    
    println("\nEfter tilføjelser:");
    println("Adresse: " + address);
    println("Sum: " + sum);
    println("Division Result: " + divisionResult);
    println("Besked: " + besked);

    // 4.f - Tæl alle numeriske variabler op med 1
    sum += 1;
    divisionResult += 1;
    println("\nEfter +1:");
    println("Sum: " + sum);
    println("Division Result: " + divisionResult);

    // 4.g - Tæl alle numeriske variabler op med 3
    sum += 3;
    divisionResult += 3;
    println("\nEfter +3:");
    println("Sum: " + sum);
    println("Division Result: " + divisionResult);

    // 4.h - Tæl alle numeriske variabler ned med 1
    sum -= 1;
    divisionResult -= 1;
    println("\nEfter -1:");
    println("Sum: " + sum);
    println("Division Result: " + divisionResult);
}
