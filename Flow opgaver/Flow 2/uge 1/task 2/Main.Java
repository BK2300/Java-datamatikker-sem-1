import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        System.out.println("Please type your name:");

        Scanner scanner = new Scanner(System.in);

        String name = scanner.nextLine();

        System.out.println("Hello " + name + ", please type your age:");

        int age = scanner.nextInt();

        System.out.println("You are " + age + " years old.");

        int retirementAge = 67;
        int yearsLeft = retirementAge - age;

        // Hvis brugeren allerede er pensioneret
        if (yearsLeft <= 0) {
            System.out.println("You are already eligible for retirement!");
        } else {
            System.out.println("You have " + yearsLeft + " years until retirement.");
        }

        scanner.close();
    }
}
