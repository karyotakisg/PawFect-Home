package pawfect_home;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PetDAO {
    public void createPet(Pet pet, int f_key) throws SQLException{
        DBConnection db = new DBConnection();
        Connection con = null;
        String sql = "INSERT INTO pets VALUES (?,?,?,?,?,?)";
        PreparedStatement stmt = null;
        try{
            con = db.getConnection();
            stmt = con.prepareStatement(sql); 
            stmt.setString(1, pet.getPet_name());
            stmt.setString(2, pet.getKind_of_pet());
            stmt.setString(3, pet.getBreed());
            stmt.setInt(4, pet.getPet_size());
            stmt.setInt(5, f_key);
            stmt.setString(6, pet.getPicture());
            stmt.executeUpdate();
        }catch(Exception e){
            throw new SQLException("Error while creating pet: " + e.getMessage(), e);
        } finally{
            db.close();
            stmt.close();
        }
    }
    
    public List<Pet> getPets() throws Exception {
		List<Pet> pets = new ArrayList<Pet>();
		DBConnection db = new DBConnection();
		Connection con = null;
        ResultSet rs = null;
        PreparedStatement stmt = null;
		String sql = "SELECT * FROM Pets;";
		try {
			con = db.getConnection();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
	 			pets.add( new Pet( rs.getString("pet_name"),rs.getString("kind_of_pet"), rs.getString("breed"), rs.getInt("pet_size"), rs.getString("picture")));
			}
 			rs.close();
			stmt.close(); 
			db.close(); 
			return pets;

		} catch (Exception e) {
            throw new SQLException("Error while creating pet: " + e.getMessage(), e);
		} finally {
            db.close();
            rs.close();
            stmt.close();     
		}
	}


public Pet getPetByPostid(int postid) throws Exception {
		Pet pet = null;
		DBConnection db = new DBConnection();
		Connection con = null;
        ResultSet rs = null;
        PreparedStatement stmt = null;
		String sql = "SELECT * FROM Pets Where post_id = ?;";
		try {
			con = db.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, postid);            
			rs = stmt.executeQuery();
			if (rs.next()) {
	 			pet = new Pet( rs.getString("pet_name"),rs.getString("kind_of_pet"),
                 rs.getString("breed"), rs.getInt("pet_size"), rs.getString("picture"));
			}
 			rs.close();
			stmt.close(); 
			db.close(); 
			return pet;

		} catch (Exception e) {
            throw new SQLException("Error while creating pet: " + e.getMessage(), e);
		} finally {
            db.close();
            rs.close();
            stmt.close();     
		}
	}
}