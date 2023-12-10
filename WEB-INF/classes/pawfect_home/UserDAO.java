package pawfect_home;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


/**
 * UserDAO provides all the necessary methods related to users.
 *  
 * @version 1.0
 * 
 */
public class UserDAO    {

    /**
	 * This method returns a List with all Users
	 *
	 * @return List<User>
	 */
	public List<User> getUsers() throws Exception {

		List<User> users = new ArrayList<User>();
		DBConnection db = new DBConnection();
		Connection con = null;

		// SQL statement to be executed
		String sql = "SELECT * FROM users;";

		try {
			// open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
	 			users.add( new User(rs.getString("firstname"), rs.getString("lastname"),
                                           rs.getString("email"),rs.getLong("phone"),rs.getString("location"),
                                           rs.getString("username"),rs.getString("password")) );
			}

 			rs.close(); // closing ResultSet
			stmt.close(); // closing PreparedStatement
			db.close(); // closing connection

			return users;

		} catch (Exception e) {

		} finally {

			try {
			     db.close();
			} catch (Exception e) {

			}

		}
		return users;
	} //End of getUsers


    /**
	 * This method is used to authenticate a user.
	 *
	 * @param username, String
	 * @param password, String
	 * @return User, the User object
	 * @throws Exception, if the credentials are not valid
	 */
	public User authenticate(String username, String password) throws Exception {
		
		DBConnection db = new DBConnection();
        Connection con = null;

        String query = "SELECT * FROM users WHERE username=? AND password=?;";

        try {

            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(query);

            // setting parameters
            stmt.setString(1, username);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            // case not valid credentials
            if (!rs.next()) {
                rs.close();
                stmt.close();
                db.close();
                throw new Exception("Wrong username or password");
            }

            // case valid credentials
            User user = new User(rs.getString("firstname"),
                        rs.getString("lastname"),
                        rs.getString("email"),
                        rs.getLong("phone"),
						rs.getString("location"),
						rs.getString("username"),
                        rs.getString("password"));

            rs.close();
            stmt.close();
            db.close();

            return user;


        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {

            }
        }


	} //End of authenticate



	/**
	 * Register/create new User.
	 *
	 * @param user, User
	 * @throws Exception, if encounter any error.
	 */
	public void register(User user) throws Exception {
		
		Connection con = null;

		//Define the SQL statement (to be executed)
		String sql= "INSERT INTO users(firstname, lastname, email, phone, location,username,password) "
                            + " VALUES (?, ?, ?, ?, ?, ?, ?);";

		String checkIfExistsQuery = "SELECT * FROM users where username=? or email=?;";

		DBConnection db = new DBConnection();

		try {
			//open connection and get Connection object
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement( sql );

			PreparedStatement checkIfExistsStmt = con.prepareStatement( checkIfExistsQuery );
			checkIfExistsStmt.setString(1, user.getUsername());
			checkIfExistsStmt.setString(2, user.getEmail());
			
			ResultSet resultSet = checkIfExistsStmt.executeQuery();

			if (resultSet.next()) {
				throw new Exception();

			} else {
				//set values to all parameters
				stmt.setString(1, user.getFirstname());
				stmt.setString(2, user.getLastname());
				stmt.setString(3, user.getEmail());
				stmt.setLong(4, user.getPhone());
				stmt.setString(5, user.getLocation());
				stmt.setString(6, user.getUsername());
				stmt.setString(7, user.getPassword());

				//execute the SQL statement (INSERT)
				stmt.executeUpdate();
			}
			
			//close everything to release resources
			stmt.close();
			checkIfExistsStmt.close();
			db.close();

            } catch (Exception e) {

				throw new Exception("Sorry, username or email already registered" + e.getMessage());

            } finally {

				try {
					db.close();
				} catch (Exception e) {	

				}

			}

	}//end of register
    
} //End of class




	
	





	

