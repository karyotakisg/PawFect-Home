package pawfect_home;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.util.List;

public class ListingDAO {

    Listing newList;

    public int createListing(Listing newList) throws SQLException, Exception {
        DBConnection db = new DBConnection();
        Connection con = null;
        String insertUserQuery = "INSERT INTO posts (upload_date, stay_at_owner, start_date, end_date, price, description, username) VALUES (?, ?, ?, ?, ?, ?, ?)";
        int generatedKey = 0;
        PreparedStatement insertUserStmt = null;
        try{
            con=db.getConnection();
            insertUserStmt = con.prepareStatement(insertUserQuery, Statement.RETURN_GENERATED_KEYS);
            // Insert the user into the database
            insertUserStmt.setDate(1, newList.getUpload_date());
            insertUserStmt.setBoolean(2, newList.getStay_at_owner());
            insertUserStmt.setDate(3, newList.getStart_date());
            insertUserStmt.setDate(4, newList.getEnd_date());
            insertUserStmt.setInt(5, newList.getPrice());
            insertUserStmt.setString(6, newList.getDescription());
            insertUserStmt.setString(7,newList.getUsername());
            insertUserStmt.executeUpdate();
            ResultSet rs = insertUserStmt.getGeneratedKeys();
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }
            return generatedKey;
        } catch (SQLException e) {
            throw new SQLException("SQL Error during listing: " + e.getMessage(), e);
        } catch (Exception e) {
            throw new Exception("Error during listing: " + e.getMessage(), e);
        }
    }
    public List<Listing> getListings() throws Exception {

        List<Listing> getListings = new ArrayList<>();
        String query = "SELECT * FROM posts;";
        DBConnection db;
        Connection con;
        try {
            db = new DBConnection();
            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
        
            while (rs.next()) {
                // Retrieve listings' data from the result set
                java.sql.Date upload_date = rs.getDate("upload_date");
                boolean stay_at_owner = rs.getBoolean("stay_at_owner");
                java.sql.Date start_date = rs.getDate("start_date");
                java.sql.Date end_date = rs.getDate("end_date");
                int price = rs.getInt("price");
                String description = rs.getString("description");
                String username = rs.getString("username");
                int postid = rs.getInt("post_id");
                
                // Create a List object with the retrieved data
                Listing listings = new Listing(upload_date, stay_at_owner,
                     start_date, end_date, price, description, username, postid);
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
