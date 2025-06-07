public class LibraryRoyaltyCalculator {
    public static void main(String[] args) {
        Forfatter forfatter = new Forfatter("Olga Ravn");

        PrintedBook bog1 = new PrintedBook("Celestine", 1.7, 140, 166);
        AudioBook bog2 = new AudioBook("Celestine - Audiobook", 1.7, 140, 192);

        forfatter.addTitle(bog1);
        forfatter.addTitle(bog2);

        System.out.println("Print bøger points: " + bog1.calculatePoints());
        System.out.println("Lydbøger points: " + bog2.calculatePoints());
        System.out.println("Total: " + (bog1.calculatePoints() + bog2.calculatePoints()));

        // Beregner samlet betaling
        double total = forfatter.calculateTotalPay();
        System.out.println("kredit før afrunding: " + total);

        // Resultat
        System.out.println(forfatter.getName() + " kredit : " + total + " kr");
    }
}
