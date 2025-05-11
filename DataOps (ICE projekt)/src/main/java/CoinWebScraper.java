import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class CoinWebScraper {

    public static void main(String[] args) {

        // Planlæg scraping hvert 15. minut
        ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

        Runnable scrapingTask = () -> {
            try {
                scrapeAndSaveToDatabase();
            } catch (Exception e) {
                e.printStackTrace();
            }
        };

        scheduler.scheduleAtFixedRate(scrapingTask, 0, 15, TimeUnit.MINUTES);
    }

    public static void scrapeAndSaveToDatabase() throws Exception {
        // 1. Hent priser fra CoinGecko API
        String url = "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum&vs_currencies=usd";

        HttpURLConnection con = (HttpURLConnection) new URL(url).openConnection();
        con.setRequestMethod("GET");

        BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
        StringBuilder response = new StringBuilder();
        String inputLine;

        while ((inputLine = in.readLine()) != null) {
            response.append(inputLine);
        }
        in.close();

        JsonObject jsonResponse = JsonParser.parseString(response.toString()).getAsJsonObject();

        JsonObject bitcoin = jsonResponse.getAsJsonObject("bitcoin");
        double btcPrice = bitcoin.get("usd").getAsDouble();

        JsonObject ethereum = jsonResponse.getAsJsonObject("ethereum");
        double ethPrice = ethereum.get("usd").getAsDouble();

        System.out.println("Bitcoin pris (USD): " + btcPrice);
        System.out.println("Ethereum pris (USD): " + ethPrice);

        // 2. Gem priserne i SQLite-database
        saveToDatabase(btcPrice, ethPrice);
    }

    public static void saveToDatabase(double btcPrice, double ethPrice) {
        String dbUrl = "jdbc:sqlite:crypto_prices.db";

        try (Connection conn = DriverManager.getConnection(dbUrl)) {
            // Opret tabel hvis den ikke findes
            String createTableSQL = """
                CREATE TABLE IF NOT EXISTS prices (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    timestamp TEXT,
                    bitcoin_usd REAL,
                    ethereum_usd REAL
                );
            """;
            Statement stmt = conn.createStatement();
            stmt.execute(createTableSQL);

            // Indsæt data
            String insertSQL = "INSERT INTO prices (timestamp, bitcoin_usd, ethereum_usd) VALUES (?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(insertSQL);
            pstmt.setString(1, new Timestamp(System.currentTimeMillis()).toString());
            pstmt.setDouble(2, btcPrice);
            pstmt.setDouble(3, ethPrice);
            pstmt.executeUpdate();

            System.out.println("✅ Gemte data i database.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
