public class Main {
    public static void main(String[] args) {
        // 1.g - Opret en Team-instans
        Team team1 = new Team("De Uovervindelige");

        // 1.i - Sæt rang for holdet
        team1.setRank(3);

        // 1.k - Opret flere hold
        Team team2 = new Team("De Lynhurtige");
        Team team3 = new Team("Mesterholdet");
        Team team4 = new Team("De Frygtløse");
        Team team5 = new Team("Legenderne");

        // 1.l - Tilføj spillere til holdet
        team1.addPlayer("Anders");
        team1.addPlayer("Mads");
        team1.addPlayer("Sofie");
        team1.addPlayer("Katrine");

        // 1.m - Print holdene
        System.out.println(team1);
        System.out.println(team2);
        System.out.println(team3);
        System.out.println(team4);
        System.out.println(team5);
    }
}
