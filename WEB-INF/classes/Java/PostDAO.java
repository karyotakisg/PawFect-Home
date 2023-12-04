import java.sql.*;
public class PostDAO {
    public void createPost(Post post) throws Exception{
        DBConnection db = new DBConnection();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql ="Insert into posts values(?,?,?,?,?,?,?);";
        try{
            con = db.getConnection();
            stmt= con.prepareStatement(sql);
            stmt.setDate(2, java.sql.Date.valueOf(post.getUpload_date()));
            stmt.setBoolean(3, post.getStay_at_owner());
            stmt.setDate(4, java.sql.Date.valueOf(post.getStart_date()));
            stmt.setDate(5, java.sql.Date.valueOf(post.getEnd_date()));
            stmt.setInt(6, post.getPrice());
            stmt.setString(7, post.getDescription());
           stmt.setString(8, "joe"); 
           rs = stmt.executeQuery();
        } catch( Exception e){
			throw new Exception("An error occured while using database: " + e.getMessage());
		} finally{
			stmt.close();
			db.close();
			rs.close();
		}
    }
}
