package TaskOne;

public class Main {

    import java.util.ArrayList;

    public class Main {
        public static void main(String[] args) {
            ArrayList<Customer> customers = new ArrayList<>();

            // Opret Customer-objekter og tilføj dem til listen
            customers.add(new Customer("Anders", "Hansen", "AndersH"));
            customers.add(new Customer("Sofie", "Larsen", "SofieL"));
            customers.add(new Customer("Jens", "Olsen", "JensO"));


            printCustomers(customers);
        }

        public static void printCustomers(ArrayList<Customer> customers) {
            System.out.println("Customer List:");
            for (Customer customer : customers) {
                System.out.println(customer); // Kalder toString()
            }
        }
    }

}
