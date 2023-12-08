import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class ListingDAO {

    private Pet pet;
    private Listing newList;

    public void createListing(Listing newList, Pet pet) throws SQLException, Exception {

        String insertUserQuery = "INSERT INTO activeListings (upload_date, stay_at_owner, start_date, end_date, price, description, pet_name, kind_of_pet, breed, pet_size) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://195.251.249.131:3306/ismgroup10", "ismgroup10", "stmj63");
             PreparedStatement insertUserStmt = connection.prepareStatement(insertUserQuery)) {

            // Insert the user into the database
            insertUserStmt.setDate(1, newList.getUpload_date());
            insertUserStmt.setBoolean(2, newList.getStay_at_owner());
            insertUserStmt.setDate(3, newList.getStart_date());
            insertUserStmt.setDate(4, newList.getEnd_date());
            insertUserStmt.setInt(5, newList.getPrice());
            insertUserStmt.setString(6, newList.getDescription());

            insertUserStmt.setString(7, pet.getPet_name());
            insertUserStmt.setString(8, pet.getKind_of_pet());
            insertUserStmt.setString(9, pet.getBreed());
            insertUserStmt.setInt(10, pet.getPet_size());


            int rowsAffected = insertUserStmt.executeUpdate();
            if (rowsAffected == 0) {
                System.out.println("Failed to list your pet.");
            } else {
                System.out.println("Pet listed successfully!");
            }

        } catch (SQLException e) {
            throw new SQLException("SQL Error during listing: " + e.getMessage(), e);
        } catch (Exception e) {
            throw new Exception("Error during listing: " + e.getMessage(), e);
        }
    }


    public List<Listing> getListings() throws Exception {

        List<Listing> getListings = new ArrayList<>();
        String query = "SELECT * FROM activeListings";

        try (Connection con = DriverManager.getConnection("jdbc:mysql://195.251.249.131:3306/ismgroup10", "ismgroup10", "stmj63");
             PreparedStatement preparedStatement = con.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                // Retrieve listings' data from the result set
                java.sql.Date upload_date = resultSet.getDate("upload date");
                boolean stay_at_owner = resultSet.getBoolean("stay at owner");
                java.sql.Date start_date = resultSet.getDate("start date");
                java.sql.Date end_date = resultSet.getDate("end date");
                int price = resultSet.getInt("price");
                String description = resultSet.getString("description");

                //Retrieve pet-related information
                String pet_name = resultSet.getString("pet name");
                String kind_of_pet = resultSet.getString("kind of pet");
                String breed = resultSet.getString("breed");
                int pet_size = resultSet.getInt("pet size");

                //Create a pet object
                Pet pet = new Pet(pet_name, kind_of_pet, breed, pet_size);

                // Create a List object with the retrieved data
                Listing listings = new Listing(upload_date, stay_at_owner, start_date, end_date, price, description, pet);
                // Add the User object to the list
                getListings.add(listings);
            }

        } catch (SQLException e) {
            // Handle SQL exception
            throw new Exception("Error executing SQL query: " + e.getMessage(), e);
        }

        return getListings;
    }

    //Deletes outdated listings from the 'activeListings' table.

    public void deleteOutdatedListings() throws SQLException, Exception {

        String deleteQuery = "DELETE FROM activeListings WHERE start_date < ?";

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://195.251.249.131:3306/ismgroup10", "ismgroup10", "stmj63");
             PreparedStatement deleteStmt = connection.prepareStatement(deleteQuery)) {

            // Set the parameter to today's date
            deleteStmt.setDate(1, java.sql.Date.valueOf(LocalDate.now()));

            // Execute the delete query
            int rowsAffected = deleteStmt.executeUpdate();

            if (rowsAffected > 0) {
                System.out.println("Outdated listings deleted successfully.");
            } else {
                System.out.println("No outdated listings found.");
            }
        } catch (SQLException e) {
            throw new SQLException("SQL Error during deletion: " + e.getMessage(), e);
        } catch (Exception e) {
            throw new Exception("Error during deletion: " + e.getMessage(), e);
        }
    }

}
