public abstract class Title {
    protected String title;
    protected double literatureTypePoints;
    protected int copies;
    protected double rate = 0.067574; // raten er fast

    public Title(String title, double literatureTypePoints, int copies) {
        this.title = title;
        this.literatureTypePoints = literatureTypePoints;
        this.copies = copies;
    }

    public double calculateRoyalty() {
        return calculatePoints() * 0.067574;
    }

    public abstract double calculatePoints();
}
