//ITS NOT 100% PERFECT AND USEABLE. BUT ITS FINE FOR NOTES ONLY!!!
//  Its not 100% in the right order I would learned them. But mainly tries to follow the everyday java programming stuctures

//These come automatically(Sort.of)
import java.util.Scanner;           //for scanners (User input)


//syntax to start a main
public class Notes {
    public static void main(String[] args) {          //this is the main line, showing the our IDE that this is the main source


        //Variables:
        char dude = "Bob";
        int year = 2020;
        double price = 2000.99;
        double temperature = 21.9;

        Boolean isRed = false;
        Boolean isGay = true;


        String car = "Audi";
        String email = "fakeemail123@gmail.com";
        String color = "Cyan";

        System.out.println("the " + car + "costs " + price);
        System.out.println("customer: is it red?");
        System.out.println("Is it red? answer: " + isRed);

    }

// user input/ Scanners

    static void
    Scanner scanner = new Scanner(System.in);

    System.out.print("Enter your name: ");          //in the terminal we want the use to insert their name in the same line, therefore print and not println
    String name = scanner.nextLine();

    System.out.println("Hello " + name);

    scanner.close();            //its good practic to close scanners at the end of your program. so it doesnt lead to unexpected behavior
}
