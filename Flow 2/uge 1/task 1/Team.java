import java.util.ArrayList;

public class Team {
    private String name;
    private int rank;
    private ArrayList<String> players;

    // Constructor
    public Team(String name) {
        this.name = name;
        this.rank = 0; // Default rank
        this.players = new ArrayList<>();
    }

    // Setter for rank
    public void setRank(int rank) {
        this.rank = rank;
    }

    // Add player to the team
    public void addPlayer(String player) {
        players.add(player);
    }

    // toString method to print team details
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Hold: ").append(name).append(" Rang: ").append(rank).append("\n");
        sb.append("Spillere:\n");
        for (String player : players) {
            sb.append("- ").append(player).append("\n");
        }
        return sb.toString();
    }
}
