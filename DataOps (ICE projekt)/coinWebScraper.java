import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONArray;
import org.json.JSONObject;

public class CoinWebScraper {

    public static void main(String[] args) {
        try {
            // 1. Definér URL'en til CoinGecko API
            String url = "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum&vs_currencies=usd";

            // 2. Opret en URL-instans og åbn en HTTP-forbindelse
            URL obj = new URL(url);
            HttpURLConnection con = (HttpURLConnection) obj.openConnection();

            // 3. Sæt HTTP-metoden til GET (da vi vil hente data)
            con.setRequestMethod("GET");

            // 4. Læs svaret fra API'en linje for linje
            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String inputLine;
            StringBuilder response = new StringBuilder();

            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();

            // 5. Parse svaret som JSON
            JSONObject jsonResponse = new JSONObject(response.toString());

            // 6. Hent prisdata for Bitcoin og Ethereum
            JSONObject bitcoin = jsonResponse.getJSONObject("bitcoin");
            double btcPrice = bitcoin.getDouble("usd");

            JSONObject ethereum = jsonResponse.getJSONObject("ethereum");
            double ethPrice = ethereum.getDouble("usd");

            // 7. Udskriv resultaterne
            System.out.println("Bitcoin pris (USD): " + btcPrice);
            System.out.println("Ethereum pris (USD): " + ethPrice);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
