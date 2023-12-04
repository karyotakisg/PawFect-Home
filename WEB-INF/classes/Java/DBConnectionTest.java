public class DBConnectionTest {

    public static void main(String[] args) {
        DBConnection dbConnection = new DBConnection();

        try {
            // Attempt to establish a connection
            System.out.println("Connecting to the database...");
            dbConnection.getConnection();
            System.out.println("Connected successfully!");

            // Perform any additional database-related operations here, if needed

        } catch (Exception e) {
            // Handle exceptions
            System.out.println("Connection failed. Exception details:");
            e.printStackTrace();
        } finally {
            try {
                // Close the connection
                if (dbConnection != null) {
                    dbConnection.close();
                    System.out.println("Connection closed.");
                }
            } catch (Exception e) {
                // Handle exceptions during closing
                System.out.println("Error while closing the connection. Exception details:");
                e.printStackTrace();
            }
        }
    }
}
