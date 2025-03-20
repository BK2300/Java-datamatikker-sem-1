import java.util.ArrayList;
import java.util.List;

public class Forfatter {
    private String name;
    private List<Title> titles;

    public Forfatter(String name) {
        this.name = name;
        this.titles = new ArrayList<>();
    }

    public void addTitle(Title title) {
        titles.add(title);
    }

    public double calculateTotalPay() {
        double totalPay = 0;
        for (Title title : titles) {
            totalPay += title.calculateRoyalty();
        }
        return Math.round(totalPay * 100.0) / 100.0;
    }

    public String getName() {
        return name;
    }
}
