package TaskOne;

class Customer {

    private String firstName;
    private String lastName;
    private String username;
    private int id;

    private static int counter = 0; // 1.c - Statisk tæller for ID


    public Customer(String firstName, String lastName, String username) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.username = username;
        this.id = ++counter; // Tildeler et unikt ID ved at tælle op
    }

    public String getFirstName() { return firstName; }
    public String getLastName() { return lastName; }
    public String getUsername() { return username; }
    public int getId() { return id; }

    // Setters (hvis vi vil ændre værdier)
    public void setFirstName(String firstName) { this.firstName = firstName; }
    public void setLastName(String lastName) { this.lastName = lastName; }
    public void setUsername(String username) { this.username = username; }

    @Override
    public String toString() {
        return "TaskOne.Customer ID: " + id + "\n" +
                "Name: " + firstName + " " + lastName + "\n" +
                "Username: @" + username + "\n";
    }
}
