public class AudioBook extends Title {
    private int durationInMinutes;

    public AudioBook(String title, double literatureTypePoints, int copies, int durationInMinutes) {
        super(title, literatureTypePoints, copies);
        this.durationInMinutes = durationInMinutes;
    }

    @Override
    public double calculatePoints() {
        return ((durationInMinutes / 2.0) * 1.0) * literatureTypePoints * copies;
    }
}
