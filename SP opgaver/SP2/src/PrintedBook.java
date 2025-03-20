public class PrintedBook extends Title {
    private int pages;

    public PrintedBook(String title, double literatureTypePoints, int copies, int pages) {
        super(title, literatureTypePoints, copies);
        this.pages = pages;
    }

    @Override
    public double calculatePoints() {
        return pages * literatureTypePoints * copies;
    }
}
